-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRPclient = Tunnel.getInterface("vRP")
sNATION = Tunnel.getInterface("nation_skinshop")
vRP = Proxy.getInterface("vRP")
local cfg = module("vrp", "Config/Groups")
local groups = cfg.groups

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("player",src)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MEGAPHONE
-----------------------------------------------------------------------------------------------------------------------------------------
local Megaphone = false
RegisterNetEvent("player:Megaphone")
AddEventHandler("player:Megaphone",function()
	Megaphone = true
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADMEGAPHONE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		if Megaphone then
			local Ped = PlayerPedId()
			if not IsEntityPlayingAnim(Ped,"anim@random@shop_clothes@watches","base",3) then
				TriggerServerEvent("pma-voice:Megaphone",false)
				TriggerEvent("pma-voice:Megaphone",false)
				Megaphone = false
			end
		end

		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:DOORS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Doors")
AddEventHandler("player:Doors",function(Number)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local Vehicle,Network = vRPclient.VehicleList(source,5)
		if Vehicle then
			local Players = vRP.getUsers(source)
			for _,v in pairs(Players) do
				async(function()
					TriggerClientEvent("player:syncDoors",v,Network,Number)
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:WINSFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:winsFunctions")
AddEventHandler("player:winsFunctions",function(Mode)
	local source = source
	local vehicle,Network = vRPclient.VehicleList(source,10)
	if vehicle then
		TriggerClientEvent("player:syncWins",source,Network,Mode)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SALÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
local cfg = module("Config/Groups")
local grupos = cfg.groups
local salarios = {}
local sound = {}

function src.rCountSalario()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then

		if salarios[user_id] == nil then 
			salarios[user_id] = 0 
		else
			salarios[user_id] = salarios[user_id] + 1
		end

		if salarios[user_id] == 30 then
			pagarSalario(user_id)
			salarios[user_id] = 0
		end
	end
end

function pagarSalario(user_id)
	local source = vRP.getUserSource(user_id)
	if user_id then
		local groups = vRP.getUserGroups(user_id)
		for k,v in pairs(groups) do
			if grupos[k] and grupos[k]._config ~= nil and grupos[k]._config.salario ~= nil then
				if grupos[k]._config.salario > 0 then
						
					vRP.giveBankMoney(user_id, grupos[k]._config.salario)
					TriggerClientEvent('Notify',source,"importante", "Você acaba de receber o salario de "..k.." no valor de $ "..vRP.format(grupos[k]._config.salario))

					if sound[user_id] == nil then
						sound[user_id] = true
						vRPclient._playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
						SetTimeout(2000, function() sound[user_id] = nil end)
					end

				end
			end
		end
	end
end

RegisterCommand('salario', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		if salarios[user_id] ~= nil then
			TriggerClientEvent('chat:addMessage',source,"SALARIO: ",{255,160,0}, " Ainda faltam ^2 ".. 40 - salarios[user_id].." minuto(s)^0 para você receber o seu salario.")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Check Permissão
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "ceo.permissao") or vRP.hasPermission(user_id, "cam.permissao") then
		return true
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PONTO
-----------------------------------------------------------------------------------------------------------------------------------------

local paisana_map = {
    ["LiderMecanico"] = "PaisanaMecanicoLider",
    ["PaisanaMecanicoLider"] = "LiderMecanico",
	
  
}

RegisterCommand('ponto', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        local user_groups = vRP.getUserGroups(user_id)
        
        for k,v in pairs(user_groups) do
            -- Verifica se é um grupo de trabalho (Job)
            local groupData = groups[k]
            if groupData and groupData._config and groupData._config.gtype == "job" then
                
                -- LOGICA 1: Tentar sair do Paisana (Voltar ao trabalho)
                if string.sub(k, 1, 7) == "Paisana" then
                    local jobOriginal = string.sub(k, 8) -- Remove "Paisana" do nome
                    
                    -- Verifica exceções no mapa manual
                    if paisana_map[k] then jobOriginal = paisana_map[k] end

                    -- Verifica se a pessoa tem permissão para assumir esse cargo
                    -- (A permissão do paisana geralmente é algo como 'paisanacargo.permissao')
                    if groups[jobOriginal] then
                        vRP.addUserGroup(user_id, jobOriginal)
                        TriggerClientEvent("Notify", source, "sucesso", "Você entrou em serviço como <b>"..vRP.getGroupTitle(jobOriginal).."</b>.")
                        return -- Encerra após trocar
                    end
                
                -- LOGICA 2: Entrar em Paisana (Sair do trabalho)
                else
                    local jobPaisana = "Paisana"..k
                    
                    -- Verifica exceções no mapa manual
                    if paisana_map[k] then jobPaisana = paisana_map[k] end

                    if groups[jobPaisana] then
                        vRP.addUserGroup(user_id, jobPaisana)
                        TriggerClientEvent("Notify", source, "aviso", "Você entrou em folga (Paisana).")
                        
                        -- Opcional: Remover armas/itens ao sair de serviço
                        vRPclient._replaceWeapons(source, {}) 
                        
                        return -- Encerra após trocar
                    end
                end
            end
        end
        
        TriggerClientEvent("Notify", source, "negado", "Você não possui um emprego com ponto disponível ou já está no grupo correto.")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYTOW
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trytow")
AddEventHandler("trytow",function(nveh,rveh)
	TriggerClientEvent("synctow",-1,nveh,rveh)
end)
-------------------------------------------------------------------------------------------------
-- COR DA ARMA
-------------------------------------------------------------------------------------------------
RegisterCommand('cor', function(source, args)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "cor.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        TriggerClientEvent('changeWeaponColor', source, args[1])
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /mascara
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mascara',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setmascara",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /blusa
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('blusa',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setblusa",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /colete
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('colete',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setcolete",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /jaqueta
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('jaqueta',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setjaqueta",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /maos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('maos',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setmaos",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /calca
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('calca',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setcalca",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /acessorios
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('acessorios',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setacessorios",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /sapatos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('sapatos',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setsapatos",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /chapeu
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('chapeu',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setchapeu",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /oculos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('oculos',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source,user_id) then
				if user_id then
					TriggerClientEvent("setoculos",source,args[1],args[2])
				end
			end
		end
	end
end)
-----------------------------------------------
-- /mochila -----------------------------------
-----------------------------------------------
RegisterCommand('mochila',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRPclient.getHealth(source) > 101 then
        if not vRPclient.isHandcuffed(source) then
            if not vRP.searchReturn(source,user_id) then
                if user_id then
                    TriggerClientEvent("setmochila",source,args[1],args[2])
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK ROUPAS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkRoupas()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"roupas") >= 1 or vRP.hasPermission(user_id,"roupas.permissao") then
			return true 
		else
			TriggerClientEvent("Notify",source,"negado","Você não possui <b>Roupas</b> na mochila.") 
			return false
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- OUTFIT - REMOVER
-----------------------------------------------------------------------------------------------------------------------------------------
local removeFit = {
	["homem"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["t-shirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 },
		["bag"] = { item = 0, texture = 0 }
		
	},
	["mulher"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["t-shirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 },
		["bag"] = { item = 0, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:PRESETFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:outfitFunctions")
AddEventHandler("player:outfitFunctions",function(mode)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if mode == "aplicar" then
			local consult = vRP.getSData("saveClothes:"..parseInt(user_id))
			local result = json.decode(consult)
			if result then
				TriggerClientEvent("updateRoupas",source,result)
				TriggerClientEvent("Notify",source,"sucesso","Roupas aplicadas.",3000)
			else
				TriggerClientEvent("Notify",source,"importante","Roupas não encontradas.",3000)
			end
		elseif mode == "salvar" then
			local custom = sNATION.getCloths(source)
			if custom then
				vRP.setSData("saveClothes:"..parseInt(user_id),json.encode(custom))
				TriggerClientEvent("Notify",source,"sucesso","Roupas salvas.",3000)
			end
		elseif mode == "remover" then
			local model = vRP.modelPlayer(source)
			if model == "mp_m_freemode_01" then
				TriggerClientEvent("updateRoupas",source,removeFit["homem"])
			elseif model == "mp_f_freemode_01" then
				TriggerClientEvent("updateRoupas",source,removeFit["mulher"])
			end
		end
	end
end)
---------------------------
-- PARAMEDIC:STARTTREATMENT
---------------------------
RegisterServerEvent("paramedic:tratamento")
AddEventHandler("paramedic:tratamento",function(nplayer)
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source,3)
	if user_id and GetEntityHealth(ped) <= 101 then
		if vRP.hasPermission(user_id,"ems.permissao") then
			TriggerClientEvent("tratamento",nplayer)
			TriggerClientEvent("Notify",source,"importante","Tratamento começou.",5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENTCHECKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function src.paymentCheckin()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"policia.permissao") then
			vRP.upgradeHunger(user_id,100)
            vRP.upgradeThirst(user_id,100)
			vRPclient.setHealth(source,400)
			return true
		end
		
		local valor = 1000
		local paramedicos = vRP.getUsersByPermission("ems.permissao")
		
		if vRP.getHealth(source) then
			valor = valor + 1000
		end

		if parseInt(paramedicos) >= 1 then
			valor = valor + 500

			if vRP.request(source,"Paramédicos em serviço, prosseguir o tratamento por <b>$"..format(valor).."</b> dólares?",30) then
				if vRP.Try(user_id,valor) then
					vRP.upgradeHunger(user_id,100)
            		vRP.upgradeThirst(user_id,100)
					vRPclient.setHealth(source,400)
					return true
				else
					TriggerClientEvent("Notify",source,"negado","Dólares insuficientes.",5000)
				end
			end
		else
			if vRP.request(source,"Prosseguir o tratamento por <b>$"..format(valor).."</b> dólares?",30) then
				if vRP.Try(user_id,valor) then
					vRP.upgradeHunger(user_id,100)
            		vRP.upgradeThirst(user_id,100)
					vRPclient.setHealth(source,400)
					return true
				else
					TriggerClientEvent("Notify",source,"negado","Dólares insuficientes.",5000)
				end
			end
		end
	end

	return false
end

RegisterCommand('sequestro',function(source,args,rawCommand)
	local nplayer = vRPclient.getNearestPlayer(source,5)
	if nplayer then
		if vRPclient.isHandcuffed(nplayer) then
			if not vRPclient.isMalas(source) then
				vRPclient.setMalas(nplayer)
			else
				vRPclient.setMalas(nplayer)
			end
		else
			TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar algemada para colocar ou retirar do Porta-Malas.")
		end
	end
end)