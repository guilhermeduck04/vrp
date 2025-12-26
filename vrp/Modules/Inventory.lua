------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CRIAR ITENS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP.items = {}

function vRP.defInventoryItem(idname, name, tipo, weight, fome, sede)
	if weight == nil then
		weight = 0
	end
	
	local item = { name = name, tipo = tipo, weight = weight, fome = fome, sede = sede }
	vRP.items[idname] = item
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS PADROES
-----------------------------------------------------------------------------------------------------------------------------------------
local addPeso = {}

function vRP.getAllItens()
	return vRP.items
end

function vRP.getItemName(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemName(item,args)
	end
	return args[1]
end

function vRP.getItemWeight(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemWeight(item,args)
	end
	return 0
end

function vRP.itemFood(args)
    local item = vRP.items[args]
    if item then
        return item.fome,item.sede
    end
end

function vRP.computeItemName(item,args)
	if type(item.name) == "string" then
		return item.name
	else
		return item.name(args)
	end
end

function vRP.computeItemWeight(item,args)
	if type(item.weight) == "number" then
		return item.weight
	else
		return item.weight(args)
	end
end

function vRP.getItemType(args)
	local item = vRP.items[args]
	if item then
		return item.tipo
	end
end

function vRP.computeInvWeight(user_id)
	local weight = 0
	local inventory = vRP.getInventory(user_id)
	if inventory then
		for k,v in pairs(inventory) do
			if vRP.items[v.item] then
				weight = weight + vRP.getItemWeight(v.item) * parseInt(v.amount)
			end
		end
		return weight
	end
	return 0
end 

function vRP.computeItemsWeight(items)
	local weight = 0
	if items then
		for k,v in pairs(items) do
			if vRP.items[v.item] then
				weight = weight + vRP.getItemWeight(v.item) * parseInt(v.amount)
			end
		end
		return weight
	end
	return 0
end 

function vRP.getInventoryItemAmount(user_id,idname)
	local data = vRP.getInventory(user_id)
	if data then
		for k,v in pairs(data) do
			if v.item == idname then
				return parseInt(v.amount)
			end
		end
	end
	return 0
end

function vRP.getItemInSlot(user_id, idname, target)
	local data = vRP.getInventory(user_id)
	if data then
		for k,v in pairs(data) do
			if v.item == idname then
				return k
			end
		end
	end
	return target
end

function vRP.addPeso(user_id, peso)
	addPeso[user_id] = tonumber(peso)
end

function vRP.getInventoryMaxWeight(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		local mochila = data.mochila
		-- Proteção contra nil no addPeso e na mochila
		local bonusPeso = 0
		if addPeso[user_id] then 
			bonusPeso = tonumber(addPeso[user_id]) 
		end
		
		local qtdMochila = 0
		if mochila and mochila.quantidade then
			qtdMochila = tonumber(mochila.quantidade)
		end

		return 10 + bonusPeso + (30 * qtdMochila)
	end
	return 10 -- Retorno padrão caso não ache dados
end


function vRP.parseItem(idname)
	return splitString(idname,"|")
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES DO INVENTARIO
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.giveInventoryItem(user_id,idname,amount,notify, slot)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		
		if vRP.items[idname] == nil and idname then
			TriggerClientEvent( "Notify", source, "negado", "Este item <b>"..idname.."</b> não existe cadastrado na base.", 1000 )
			return
		end
		
		if data and parseInt(amount) > 0 then
			if not slot then
				local initial = 0
				repeat
					initial = initial + 1
				until data[tostring(initial)] == nil or (data[tostring(initial)] and data[tostring(initial)].item == idname)
				initial = tostring(initial)
				
				if data[initial] == nil then
					data[initial] = { item = idname, amount = parseInt(amount) }
				elseif data[initial] and data[initial].item == idname then
					data[initial].amount = parseInt(data[initial].amount) + parseInt(amount)
				end

				if notify then
					TriggerClientEvent("itensNotify",source,"sucesso", amount , vRP.getItemName(idname), idname, vRP.getItemWeight(idname)*amount)
				end
			else
				slot = tostring(slot)

				if data[slot] then
					if data[slot].item == idname then
						local oldAmount = parseInt(data[slot].amount)
						data[slot] = { item = idname, amount = parseInt(oldAmount) + parseInt(amount) }
					end
				else
					data[slot] = { item = idname, amount = parseInt(amount) }
				end

				if notify then
					TriggerClientEvent("itensNotify",source,"sucesso", amount , vRP.getItemName(idname), idname, vRP.getItemWeight(idname)*amount)
				end
			end
		end
	end
end

function vRP.tryGetInventoryItem(user_id,idname,amount,notify,slot)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		if data then
			if not slot then
				for k,v in pairs(data) do
					if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
						v.amount = parseInt(v.amount) - parseInt(amount)

						if parseInt(v.amount) <= 0 then
							data[k] = nil
						end

						if notify then
							TriggerClientEvent("itensNotify",source,"negado", amount , vRP.getItemName(idname), idname, vRP.getItemWeight(idname)*amount)
						end

						return true
					end
				end
			else
				local slot  = tostring(slot)

				if data[slot] and data[slot].item == idname and parseInt(data[slot].amount) >= parseInt(amount) then
					data[slot].amount = parseInt(data[slot].amount) - parseInt(amount)

					if parseInt(data[slot].amount) <= 0 then
						data[slot] = nil
					end

					if notify then
						TriggerClientEvent("itensNotify",source,"negado", amount , vRP.getItemName(idname), idname, vRP.getItemWeight(idname)*amount)
					end
					
					return true
				end
			end
		end
	end
	return false
end

function vRP.removeInventoryItem(user_id,idname,amount)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		if data then
			for k,v in pairs(data) do
				if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
					v.amount = parseInt(v.amount) - parseInt(amount)

					if parseInt(v.amount) <= 0 then
						data[k] = nil
					end
					break
				end
			end
			
			TriggerClientEvent("itensNotify",source,"negado", amount , vRP.getItemName(idname), idname, vRP.getItemWeight(idname)*amount)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE MOCHILA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.addMochila(user_id)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila

	if data then
		data.mochila = { quantidade = mochila.quantidade+1, perder = mochila.perder }
	end
end

function vRP.remMochila(user_id)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila

	if data then
		data.mochila = { quantidade = 0, perder = mochila.perder }
	end
end

function vRP.getMochilaAmount(user_id)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila
	if data then
		return mochila.quantidade
	end
end

function vRP.atualizarMochila(user_id, time)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila

	if data then
		data.mochila = { quantidade = mochila.quantidade, perder = time }
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETINVENTORY
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getInventory(user_id)
	local data = vRP.user_tables[user_id]
	if data then
		return data.inventory
	end
	return false
end

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	addPeso[user_id] = 0
end)


RegisterServerEvent("clearInventory")
AddEventHandler("clearInventory",function()
    local source = source
    local user_id = vRP.getUserId(source)

    if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.inventory = {}
		end

		if not vRP.hasPermission(user_id,"mochila.permissao") then
			vRP.remMochila(user_id)
		end
		
		vRPclient._limparArmas(source)
		vRPclient._clearWeapons(source)
        vRPclient._setHandcuffed(source,false)
	end
end)

function vRP.clearInventory(user_id)
    local data = vRP.getUserDataTable(user_id)
    if data then
        data.inventory = {}
    end
end


local cooldown = {
	users = {}
}

function cooldown:set(user_id, name, time)
	self.users[user_id..':'..name] = (os.time() + time)
end

function cooldown:get(user_id, name)
	if self.users[user_id..':'..name] then
		if (self.users[user_id..':'..name] - os.time()) <= 0 then
			self.users[user_id..':'..name] = nil
			return true
		end

		return false,(self.users[user_id..':'..name] - os.time())
	end

	return true
end

exports("setCooldown", function(...)
    return cooldown:set(...)
end)

exports("getCooldown", function(...)
    return cooldown:get(...)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SWAP SLOT (Mover itens)
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.swapSlot(user_id, slot_from, slot_to)
    local data = vRP.getUserDataTable(user_id)
    if data and data.inventory then
        local inventory = data.inventory
        slot_from = tostring(slot_from)
        slot_to = tostring(slot_to)

        local from_item = inventory[slot_from]
        local to_item = inventory[slot_to]

        if from_item then
            -- Se o slot de destino já tem item, inverte eles
            if to_item then
                inventory[slot_from] = to_item
                inventory[slot_to] = from_item
            else
                -- Se não tem, apenas move e limpa o antigo
                inventory[slot_to] = from_item
                inventory[slot_from] = nil
            end
            return true
        end
    end
    return false
end

-- Export para scripts externos usarem
exports("swapSlot", function(user_id, from, to)
    return vRP.swapSlot(user_id, from, to)
end)