local Tunnel = module("lib/Tunnel")
local Proxy = module("lib/Proxy")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vRP = {}
Proxy.addInterface("vRP",vRP)

tvRP = {}
Tunnel.bindInterface("vRP",tvRP)

REQUEST = Tunnel.getInterface("request")

vRPclient = Tunnel.getInterface("vRP")

vRP.users = {}
vRP.rusers = {}
vRP.user_tables = {}
vRP.user_tmp_tables = {}
vRP.user_sources = {}

local db_drivers = {}
local db_driver
local cached_prepares = {}
local cached_queries = {}
local prepared_queries = {}
local db_initialized = false


-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK SYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.webhook(url, message)
    if url == nil or url == "" then return end
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({
        content = message
    }), { ['Content-Type'] = 'application/json' })
end

function vRP.log(file, info)
    file = io.open(file, "a")
    if file then
        file:write(os.date("%d/%m/%Y %H:%M:%S") .. " -> " .. info .. "\n")
        file:close()
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP.REQUEST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.Request(source,Message,Accept,Reject)
	return REQUEST.Function(source,Message,Accept or "Sim",Reject or "Não")
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BASE.LUA
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.registerDBDriver(name,on_init,on_prepare,on_query)
	if not db_drivers[name] then
		db_drivers[name] = { on_init,on_prepare,on_query }
		db_driver = db_drivers[name]
		db_initialized = true

		for _,prepare in pairs(cached_prepares) do
			on_prepare(table.unpack(prepare,1,table.maxn(prepare)))
		end

		for _,query in pairs(cached_queries) do
			query[2](on_query(table.unpack(query[1],1,table.maxn(query[1]))))
		end

		cached_prepares = nil
		cached_queries = nil
	end
end

function vRP.format(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1.'):reverse())..right
end

function vRP.prepare(name,query)
	prepared_queries[name] = true

	if db_initialized then
		db_driver[2](name,query)
	else
		table.insert(cached_prepares,{ name,query })
	end
end

function vRP.query(name,params,mode)
	if not mode then mode = "query" end

	if db_initialized then
		return db_driver[3](name,params or {},mode)
	else
		local r = async()
		table.insert(cached_queries,{{ name,params or {},mode },r })
		return r:wait()
	end
end

function vRP.execute(name,params)
	return vRP.query(name,params,"execute")
end

function vRP.getUserIdByIdentifiers(ids)
	if ids and #ids then
		for i=1,#ids do
			if (string.find(ids[i],"ip:") == nil) then
				local rows = vRP.query("vRP/userid_byidentifier",{ identifier = ids[i] })
				if #rows > 0 then
					return rows[1].user_id
				end
			end
		end

		local rows,affected = vRP.query("vRP/create_user",{})

		if #rows > 0 then
			local user_id = rows[1].id
			for l,w in pairs(ids) do
				if (string.find(w,"ip:") == nil) then
					vRP.execute("vRP/add_identifier",{ user_id = user_id, identifier = w })
				end
			end
			return user_id
		end
	end
end

function vRP.getPlayerEndpoint(player)
	return GetPlayerEP(player) or "0.0.0.0"
end

function vRP.isBanned(user_id, cbr)
	local rows = vRP.query("vRP/get_banned",{ user_id = user_id })
	if #rows > 0 then
		return rows[1].banned
	else
		return false
	end
end

function vRP.setBanned(user_id,banned)
	vRP.execute("vRP/set_banned",{ user_id = user_id, banned = banned })
end

function vRP.isWhitelisted(user_id, cbr)
	local rows = vRP.query("vRP/get_whitelisted",{ user_id = user_id })
	if #rows > 0 then
		return rows[1].whitelisted
	else
		return false
	end
end

function vRP.setWhitelisted(user_id,whitelisted)
	vRP.execute("vRP/set_whitelisted",{ user_id = user_id, whitelisted = whitelisted })
end

function vRP.setUData(user_id,key,value)
	vRP.execute("vRP/set_userdata",{ user_id = user_id, key = key, value = value })
end

function vRP.getUData(user_id,key,cbr)
	local rows = vRP.query("vRP/get_userdata",{ user_id = user_id, key = key })
	if #rows > 0 then
		return rows[1].dvalue
	else
		return ""
	end
end

function vRP.setSData(key,value)
	vRP.execute("vRP/set_srvdata",{ key = key, value = value })
end

function vRP.getSData(key, cbr)
	local rows = vRP.query("vRP/get_srvdata",{ key = key })
	if #rows > 0 then
		return rows[1].dvalue
	else
		return ""
	end
end

function vRP.RemSrvData(Key)
    vRP.query("vRP/rem_srvdata",{dkey = Key})
end

function vRP.getUserDataTable(user_id)
	return vRP.user_tables[user_id]
end

function vRP.getUserTmpTable(user_id)
	return vRP.user_tmp_tables[user_id]
end

function vRP.getUserId(source)
    if source ~= nil then
        local ids = GetPlayerIdentifiers(source)
        if ids ~= nil and #ids > 0 then
            for _, id in ipairs(ids) do
                if vRP.users[id] then
                    return vRP.users[id]
                end
            end
        end
    end
    return nil
end

function vRP.getUserSource(user_id)
	return vRP.user_sources[user_id]
end

function vRP.getUsers()
	local users = {}
	for k,v in pairs(vRP.user_sources) do
		users[k] = v
	end
	return users
end

function vRP.kick(source,reason)
	DropPlayer(source,reason)
end

function vRP.dropPlayer(source)
	local source = source
	local user_id = vRP.getUserId(source)
	vRPclient._removePlayer(-1,source)
	if user_id then
		if user_id and source then
			TriggerEvent("vRP:playerLeave",user_id,source)
		end
		vRP.setUData(user_id,"vRP:datatable",json.encode(vRP.getUserDataTable(user_id)))
		vRP.users[vRP.rusers[user_id]] = nil
		vRP.rusers[user_id] = nil
		vRP.user_tables[user_id] = nil
		vRP.user_tmp_tables[user_id] = nil
		vRP.user_sources[user_id] = nil
	end
end

function task_save_datatables()
    SetTimeout(60000, task_save_datatables) -- Mantém o loop de 60 segundos
    TriggerEvent("vRP:save")
    
    Citizen.CreateThread(function() -- Cria uma thread separada para não travar o servidor
        for k,v in pairs(vRP.user_tables) do
            vRP.setUData(k, "vRP:datatable", json.encode(v))
            Citizen.Wait(100) -- Espera 100ms entre cada save. Isso elimina o lag spike.
        end
    end)
end

async(function()
	task_save_datatables()
end)

AddEventHandler("queue:playerConnecting",function(source,ids,name,setKickReason,deferrals)
	deferrals.defer()
	local source = source
	local ids = ids
	local user_id = vRP.getUserIdByIdentifiers(ids)

	deferrals.update("Carregando identidades.")
	if ids ~= nil and #ids > 0 then
		deferrals.update("Carregando banimentos.")
		if not vRP.isBanned(user_id) then
			deferrals.update("Carregando banco de dados.")
			if vRP.rusers[user_id] == nil then
				local sdata = vRP.getUData(user_id,"vRP:datatable")

				for _, id in ipairs(ids) do
    			vRP.users[id] = user_id
				end
				vRP.rusers[user_id] = ids[1]
				vRP.user_tables[user_id] = {}
				vRP.user_tmp_tables[user_id] = {}
				vRP.user_sources[user_id] = source

				local data = json.decode(sdata)
				
				if type(data) == "table" then
					vRP.user_tables[user_id] = data 
				end

				local tmpdata = vRP.getUserTmpTable(user_id)
				tmpdata.spawns = 0

				vRP.execute("vRP/set_last_login",{ user_id = user_id, last_login = os.date("%d.%m.%Y"), ip = GetPlayerEndpoint(source) })

				TriggerEvent("vRP:playerJoin",user_id,source,name)
				deferrals.done()
			else
				local tmpdata = vRP.getUserTmpTable(user_id)
				tmpdata.spawns = 0

				TriggerEvent("vRP:playerRejoin",user_id,source,name)
				deferrals.done()
			end
		else
			deferrals.done("Você foi banido da cidade.")
			TriggerEvent("queue:playerConnectingRemoveQueues",ids)
		end
	else
		deferrals.done("Ocorreu um problema de identidade.")
		TriggerEvent("queue:playerConnectingRemoveQueues",ids)
	end
end)

AddEventHandler("playerDropped",function(reason)
	local source = source
	vRP.dropPlayer(source)
end)

RegisterServerEvent("vRPcli:playerSpawned")
AddEventHandler("vRPcli:playerSpawned",function()
	local user_id = vRP.getUserId(source)
	if user_id then
		vRP.user_sources[user_id] = source
		local tmp = vRP.getUserTmpTable(user_id)
		tmp.spawns = tmp.spawns+1
		local first_spawn = (tmp.spawns == 1)

		if first_spawn then
			for k,v in pairs(vRP.user_sources) do
				vRPclient._addPlayer(source,v)
			end
			vRPclient._addPlayer(-1,source)
			Tunnel.setDestDelay(source,0)
		end
		TriggerEvent("vRP:playerSpawn",user_id,source,first_spawn)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE VEHICLE (Server-Side para OneSync)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vRP:deleteVehicle")
AddEventHandler("vRP:deleteVehicle", function(netId)
    local source = source
    if netId then
        local entity = NetworkGetEntityFromNetworkId(netId)
        if DoesEntityExist(entity) then
            DeleteEntity(entity)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS (Compatibilidade com scripts modernos)
-----------------------------------------------------------------------------------------------------------------------------------------
exports("getUserId", function(source)
    return vRP.getUserId(source)
end)

exports("getUserSource", function(user_id)
    return vRP.getUserSource(user_id)
end)

exports("hasPermission", function(user_id, perm)
    return vRP.hasPermission(user_id, perm)
end)

exports("getBankMoney", function(user_id)
    return vRP.getBankMoney(user_id)
end)