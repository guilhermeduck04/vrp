------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GEMAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.GetGemas(user_id)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		return tmp.gemas or 0
	else
		return 0
	end
end

function vRP.SetGemas(user_id,value)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		tmp.gemas = value
	end
end

function vRP.GiveGemas(user_id,amount)
	if amount >= 0 then
		local Gemas = vRP.GetGemas(user_id)
		vRP.SetGemas(user_id,Gemas+amount)
	end
end

function vRP.TryGemas(user_id,amount)
	if amount >= 0 then
		local Gemas = vRP.GetGemas(user_id)
		if amount >= 0 and Gemas >= amount then
			vRP.SetGemas(user_id,Gemas-amount)
			return true
		else
			return false
		end
	end
	return false
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CARTEIRA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.getMoney(user_id)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		return tmp.wallet or 0
	else
		return 0
	end
end

function vRP.setMoney(user_id,value)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		tmp.wallet = value
	end
end

function vRP.GiveCarteira(user_id,amount)
	if amount >= 0 then
		local money = vRP.getMoney(user_id)
		vRP.setMoney(user_id,money+amount)
	end
end

function vRP.TryCarteira(user_id,amount)
	if amount >= 0 then
		local money = vRP.getMoney(user_id)
		if amount >= 0 and money >= amount then
			vRP.setMoney(user_id,money-amount)
			return true
		else
			return false
		end
	end
	return false
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BANCO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.getBankMoney(user_id)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		return tmp.bank or 0
	else
		return 0
	end
end

function vRP.setBankMoney(user_id,value)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		tmp.bank = value
	end
end

function vRP.giveBankMoney(user_id,amount)
	if amount >= 0 then
		local money = vRP.getBankMoney(user_id)
		vRP.setBankMoney(user_id,money+amount)
	end
end

function vRP.TryBank(user_id,amount)
	if amount >= 0 then
		local money = vRP.getBankMoney(user_id)
		if money >= amount then
			vRP.setBankMoney(user_id,money-amount)
			return true
		end
	end
	return false
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FORMAS DE PAGAMENTO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.TryRetirar(user_id,amount)
	local Bank = vRP.getBankMoney(user_id)
	if amount >= 0 and Bank >= amount then
		vRP.setBankMoney(user_id,Bank-amount)
		vRP.GiveCarteira(user_id,amount)
		return true
	else
		return false
	end
end

function vRP.TryDepositar(user_id,amount)
	if amount >= 0 and vRP.TryCarteira(user_id,amount) then
		vRP.giveBankMoney(user_id,amount)
		return true
	else
		return false
	end
end

function vRP.Try(user_id,amount)
	if amount >= 0 then
		local Bank = vRP.getBankMoney(user_id)
		local Money = vRP.getMoney(user_id)
		if Money >= amount then
			vRP.setMoney(user_id,Money-amount)
			return true
		elseif Bank >= amount then
			vRP.setBankMoney(user_id,Bank-amount)
			return true
		end
	end
	return false
end

function vRP.tryFullPayment(user_id, amount)
    if amount < 0 then return false end
    
    local money = vRP.getMoney(user_id)
    -- Tenta pagar com dinheiro da mão primeiro
    if money >= amount then
        return vRP.TryCarteira(user_id, amount)
    else
        -- Se não tiver na mão, tenta pagar com o banco
        return vRP.TryBank(user_id, amount)
    end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerJoin",function(user_id,source,name)
	vRP.execute("vRP/money_init_user",{ user_id = user_id, wallet = 10000, bank = 25000, gemas = 10 })
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp then
		local rows = vRP.query("vRP/get_money",{ user_id = user_id })
		if #rows > 0 then
			tmp.bank = rows[1].bank
			tmp.wallet = rows[1].wallet
			tmp.gemas = rows[1].gemas
		end
	end
end)

AddEventHandler("vRP:playerLeave",function(user_id,source)
	local tmp = vRP.getUserTmpTable(user_id)
	if tmp and tmp.wallet and tmp.bank and tmp.gemas then
		vRP.execute("vRP/set_money",{ user_id = user_id, wallet = tmp.wallet, bank = tmp.bank, gemas = tmp.gemas })
	end
end)

AddEventHandler("vRP:save",function()
	for k,v in pairs(vRP.user_tmp_tables) do
		if v.wallet and v.bank and v.gemas then
			vRP.execute("vRP/set_money",{ user_id = k, wallet = v.wallet, bank = v.bank, gemas = v.gemas })
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE SALÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
local cfg = module("Config/Groups") 
local groups = cfg.groups

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60 * 60 * 1000) -- Executa a cada 60 minutos (1 hora)
        
        local users = vRP.getUsers()
        for user_id,source in pairs(users) do
            local salary = 0
            local user_groups = vRP.getUserGroups(user_id)
            
            -- Verifica todos os grupos do jogador para somar salários
            for group,active in pairs(user_groups) do
                if active and groups[group] and groups[group]._config and groups[group]._config.salario then
                    salary = salary + groups[group]._config.salario
                end
            end

            -- Se tiver salário para receber
            if salary > 0 then
                vRP.giveBankMoney(user_id, salary)
                TriggerClientEvent("Notify", source, "sucesso", "Você recebeu seu salário de <b>$"..vRP.format(salary).."</b>.")
            end
        end
    end
end)