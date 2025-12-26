local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('item',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] and args[2] then
			if args[1] == "money" then
				local creturn = vRP.getItemInSlot(user_id, "money", false)
				if creturn then
					vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true, creturn)
				else
					vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true)
				end
			else
				vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERSON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pon',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local users = vRP.getUsers()
        local players = ""
		local quantidade = 0
		
        for k,v in pairs(users) do
			players = players..k..""
            quantidade = quantidade + 1 
		end
		
        TriggerClientEvent('chat:addMessage',source, "TOTAL ONLINE", quantidade, "Players")
        TriggerClientEvent('chat:addMessage',source, "ID's ONLINE", players, "Players")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('group',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] and args[2] then
			vRP.addUserGroup(parseInt(args[1]),args[2])
			TriggerClientEvent("Notify",source,"sucesso","Você setou o passaporte <b>"..parseInt(args[1]).."</b> no grupo <b>"..args[2].."</b>.")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNGROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ungroup',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] and args[2] then
			vRP.removeUserGroup(parseInt(args[1]),args[2])
			TriggerClientEvent("Notify",source,"sucesso","Você removeu o passaporte <b>"..parseInt(args[1]).."</b> do grupo <b>"..args[2].."</b>.")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDCAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('addcar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserId(parseInt(args[2]))
    if vRP.hasPermission(user_id,"admin.permissao") then
        if args[1] and args[2] then

            vRP.execute("vehicles/addVehicles",{ user_id = parseInt(args[2]), vehicle = args[1], plate = vRP.generateRegistrationNumber(), work = tostring(false) })

            TriggerClientEvent("Notify",source,"sucesso","Você adicionou o veículo <b>"..args[1].."</b> para o Passaporte: <b>"..parseInt(args[2]).."</b>.") 
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMCAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('remcar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserId(parseInt(args[2]))
    if vRP.hasPermission(user_id,"ceo.permissao") then
        if args[1] and args[2] then
            vRP.execute("vehicles/removeVehicles",{ user_id = parseInt(args[2]), vehicle = args[1]  }) 
            TriggerClientEvent("Notify",source,"sucesso","Você removeu o veículo <b>"..args[1].."</b> do Passaporte: <b>"..parseInt(args[2]).."</b>.") 
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('nc',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"teste.permissao") then
        vRPclient.toggleNoclip(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
---ALGEMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cuff',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                vRPclient._toggleHandcuff(nplayer)
            end
        else
            vRPclient._toggleHandcuff(source)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD ALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('godall',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"ceo.permissao") then
    	local users = vRP.getUsers()
        for k,v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
            	vRPclient.killGod(id)
				vRPclient.setHealth(id,400)
				print(id)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MATAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('matar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"ceo.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient.setHealth(nplayer,101)
			end
		else
			vRPclient.setHealth(nplayer,101)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('limpararea',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local x,y,z = vRPclient.getPosition(source)
	if vRP.hasPermission(user_id,"moderador.permissao") then
		TriggerClientEvent("syncarea",-1,x,y,z)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UNCUFF
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('algemas',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"admin.permissao") then
			TriggerClientEvent("admcuff",source)
		end
	end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TROCAR SEXO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('skin',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        if parseInt(args[1]) then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                TriggerClientEvent("skinmenu",nplayer,args[2])
                TriggerClientEvent("Notify",source,"sucesso","Voce setou a skin <b>"..args[2].."</b> no passaporte <b>"..parseInt(args[1]).."</b>.")
            end
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('debug',function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"teste.permissao") then
			TriggerClientEvent("ToggleDebug",player)
		end
	end
end)

RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj",function(index)
    TriggerClientEvent("syncdeleteobj",-1,index)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('fix',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local Vehicle = vRPclient.VehicleList(source,7)
        if Vehicle then
            TriggerClientEvent('reparar',source,Vehicle)
		end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Gasolina
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('gas',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local Vehicle = vRPclient.VehicleList(source,7)
        if Vehicle then
            TriggerClientEvent('admfuel',source,Vehicle)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR CARRO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryreparar")
AddEventHandler("tryreparar",function(nveh)
	TriggerClientEvent("syncreparar",-1,nveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"teste.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient.killGod(nplayer)
				vRPclient.setHealth(nplayer,400)
				vRP.upgradeThirst(nplayer,50)
				vRP.upgradeHunger(nplayer,50)
			end
		else
			vRPclient.killGod(source)
			vRPclient.setHealth(source,400)
			vRP.upgradeThirst(source,100)
			vRP.upgradeHunger(source,100)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tuning',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent('vehtuning',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[2] == nil and args[1] then
			vRP.GiveCarteira(user_id,parseInt(args[1]))
			TriggerClientEvent("Notify",source,"sucesso","Você Pegou " ..args[1].. " Em Dinheiro")
		elseif args[2] == "2" and args[1] then
			vRP.giveBankMoney(user_id,parseInt(args[1]))
			TriggerClientEvent("Notify",source,"sucesso","Você Depósito " ..args[1].. " No Seu Banco")
		end
	end
end)


RegisterCommand('money', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local target_id = parseInt(args[1])
        local amount = parseInt(args[2])
        
        if target_id and amount then
            local target_identity = vRP.getUserIdentity(target_id)
            if target_identity then
                vRP.GiveCarteira(target_id, amount)
                TriggerClientEvent("Notify", source, "sucesso", "Você deu " .. amount .. " em dinheiro para o ID " .. target_id)
                TriggerClientEvent("Notify", target_id, "sucesso", "Você recebeu " .. amount .. " em dinheiro de um administrador.")
            else
                TriggerClientEvent("Notify", source, "negado", "ID do jogador não encontrado.")
            end
        else
            TriggerClientEvent("Notify", source, "aviso", "Uso correto: /money [ID] [Valor]")
        end
    else
        TriggerClientEvent("Notify", source, "negado", "Você não tem permissão para usar este comando.")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GEMAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('gemas', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)  -- Obtém o ID do jogador que executa o comando
    if vRP.hasPermission(user_id, "ceo.permissao") then  -- Verifica se o jogador tem permissão
        local quantidade = parseInt(args[1])  -- Quantidade de gemas a ser enviada
        local target_id = parseInt(args[2])   -- ID do jogador que vai receber as gemas

        if quantidade and quantidade > 0 then
            if target_id and vRP.getUserSource(target_id) then  -- Verifica se o ID do jogador alvo é válido
                vRP.GiveGemas(target_id, quantidade)  -- Dá as gemas ao jogador alvo
                TriggerClientEvent("Notify", source, "sucesso", "Você enviou " .. quantidade .. " gemas para o jogador " .. target_id .. ".")
                TriggerClientEvent("Notify", vRP.getUserSource(target_id), "sucesso", "Você recebeu " .. quantidade .. " gemas do jogador " .. user_id .. ".")
            else
                -- Se não for especificado um jogador alvo ou o ID for inválido
                vRP.GiveGemas(user_id, quantidade)  -- Dá as gemas ao próprio jogador
                TriggerClientEvent("Notify", source, "sucesso", "Você pegou " .. quantidade .. " gemas.")
            end
        else
            -- Notifica se a quantidade for inválida
            TriggerClientEvent("Notify", source, "erro", "Quantidade inválida de gemas.")
        end
    else
        -- Notifica se o jogador não tiver permissão
        TriggerClientEvent("Notify", source, "erro", "Você não tem permissão para usar este comando.")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpcds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"teste.permissao") then
		local fcoords = vRP.prompt(source,"Cordenadas:","")
		if fcoords == "" then
			return
		end
		local coords = {}
		for coord in string.gmatch(fcoords or "0,0,0","[^,]+") do
			table.insert(coords,parseInt(coord))
		end
		vRPclient.teleport(source,coords[1] or 0,coords[2] or 0,coords[3] or 0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cds",function(source,args)
	local Ped = GetPlayerPed(source)
	local Coords = GetEntityCoords(Ped)
	local heading = GetEntityHeading(Ped)
	if args[1] == nil then
		vRP.prompt(source,"Coordenadas:",mathLength(Coords["x"])..", "..mathLength(Coords["y"])..", "..mathLength(Coords["z"]))
	elseif args[1] == "2" then
		vRP.prompt(source,"Coordenadas:","x = "..mathLength(Coords["x"])..", y = "..mathLength(Coords["y"])..", z = "..mathLength(Coords["z"]))
	elseif args[1] == "3" then
		vRP.prompt(source,"Coordenadas:",mathLength(Coords["x"])..", "..mathLength(Coords["y"])..", "..mathLength(Coords["z"])..", "..mathLength(heading))
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tptome', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] then
            local tplayer = vRP.getUserSource(parseInt(args[1]))
            if tplayer then
                -- Pega a posição do Admin (Source) usando GetEntityCoords no servidor (OneSync)
                local ped = GetPlayerPed(source)
                local coords = GetEntityCoords(ped)
                
                -- Leva o jogador alvo até o admin
                vRPclient.teleport(tplayer, coords.x, coords.y, coords.z)
                TriggerClientEvent("Notify", source, "sucesso", "Você puxou o passaporte "..args[1]..".")
            else
                TriggerClientEvent("Notify", source, "negado", "Jogador offline ou não encontrado.")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpto', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] then
            local tplayer = vRP.getUserSource(parseInt(args[1]))
            if tplayer then
                -- Pega a posição do Alvo (Target) usando GetEntityCoords no servidor
                local target_ped = GetPlayerPed(tplayer)
                local coords = GetEntityCoords(target_ped)
                
                -- Leva o admin até o jogador
                vRPclient.teleport(source, coords.x, coords.y, coords.z)
                TriggerClientEvent("Notify", source, "sucesso", "Você foi até o passaporte "..args[1]..".")
            else
                TriggerClientEvent("Notify", source, "negado", "Jogador offline.")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpway',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source) 
	if vRP.hasPermission(user_id,"teste.permissao") then
		TriggerClientEvent('tptoway',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('adm',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local mensagem = vRP.prompt(source,"Mensagem:","")
		if mensagem == "" then
			return
		end
		vRPclient.setDiv(-1,"anuncio",".div_anuncio { background: rgba(181, 0, 181,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 10%; right: 20%; max-width: 500px; position: absolute; -webkit-border-radius: 10px; } bold { font-size: 16px; }","<bold>"..mensagem.."</bold><br><br>Mensagem enviada por: Administrador")
		SetTimeout(60000,function()
			vRPclient.removeDiv(-1,"anuncio")
		end)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DM (MENSAGEM PRIVADA)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('dm',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserSource(parseInt(args[1]))
    if vRP.hasPermission(user_id,"admin.permissao") then
        if args[1] == nil then
            TriggerClientEvent("Notify",source,"negado","Necessário passar o ID após o comando, exemplo: <b>/dm 1</b>")
            return
        elseif nplayer == nil then
            TriggerClientEvent("Notify",source,"negado","O jogador não está online!")
            return
        end
        local mensagem = vRP.prompt(source,"Digite a mensagem:","")
        if mensagem == "" then
            return
        end
        TriggerClientEvent("Notify",source,"sucesso","Mensagem enviada com sucesso!")
        TriggerClientEvent('chat:addMessage',nplayer,"MENSAGEM DA ADMINISTRAÇÃO:",{50,205,50},mensagem)
        TriggerClientEvent("Notify",nplayer,"importante","<b>Mensagem da Administração:</b> "..mensagem.."",30000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('players',function(source,args,rawCommand)
    local Online = GetNumPlayerIndices()
    TriggerClientEvent('Notify',source,"importante","Jogadores Online: "..Online, 20000)
end) 
-----------------------------------------------------------------------------------------------------------------------------------------
-- FESTINHA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('festa',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"event.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
        local identity = vRP.getUserIdentity(user_id)
        local mensagem = vRP.prompt(source,"Mensagem:","")
        if mensagem == "" then
            return
        end
        vRPclient.setDiv(-1,"festinha"," @keyframes blinking {    0%{ background-color: #ff3d50; border: 2px solid #871924; opacity: 0.8; } 25%{ background-color: #d22d99; border: 2px solid #901f69; opacity: 0.8; } 50%{ background-color: #55d66b; border: 2px solid #126620; opacity: 0.8; } 75%{ background-color: #22e5e0; border: 2px solid #15928f; opacity: 0.8; } 100%{ background-color: #222291; border: 2px solid #6565f2; opacity: 0.8; }  } .div_festinha { font-size: 11px; font-family: arial; color: rgba(255, 255, 255,1); padding: 20px; bottom: 10%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; animation: blinking 1s infinite; } bold { font-size: 16px; }","<bold>"..mensagem.."</bold><br><br>Festeiro(a): "..identity.name.." "..identity.firstname)
        SetTimeout(7000,function()
            vRPclient.removeDiv(-1,"festinha")
        end)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('hash',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"teste.permissao") then
		TriggerClientEvent('vehash',source)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Spectate = {}
RegisterCommand("spec",function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if user_id == 3 or user_id == 443 then
			if Spectate[user_id] then
				local Ped = GetPlayerPed(Spectate[user_id])
				if DoesEntityExist(Ped) then
					SetEntityDistanceCullingRadius(Ped,0.0)
				end
				
				TriggerClientEvent("admin:resetSpectate",source)
				Spectate[user_id] = nil
			else
				local nsource = vRP.getUserSource(parseInt(args[1]))
				if nsource then
					local Ped = GetPlayerPed(nsource)
					if DoesEntityExist(Ped) then
						SetEntityDistanceCullingRadius(Ped,999999999.0)
						Wait(1000)
						TriggerClientEvent("admin:initSpectate",source,nsource)
						Spectate[user_id] = nsource
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('wl',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"teste.permissao") then
        if args[1] then
            vRP.setWhitelisted(parseInt(args[1]),true)
            TriggerClientEvent("Notify",source,"sucesso","Voce aprovou o passaporte <b>"..args[1].."</b> na whitelist.")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNWL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('unwl',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			vRP.setWhitelisted(parseInt(args[1]),false)
			TriggerClientEvent("Notify",source,"sucesso","Voce retirou o passaporte <b>"..args[1].."</b> da whitelist.")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ban', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local target_id = parseInt(args[1])
        local reason = table.concat(args, " ", 2) or "Motivo não informado"
        
        if target_id then
            -- Aplica o Ban
            vRP.setBanned(target_id, true)
            vRP.kick(vRP.getUserSource(target_id), "Você foi banido: " .. reason)
            
            -- Mensagem no Chat
            TriggerClientEvent("Notify", source, "sucesso", "ID " .. target_id .. " banido.")
            
            -- LOG NO DISCORD (Essencial)
            local identity = vRP.getUserIdentity(user_id)
            local logMessage = "ADMIN: " .. user_id .. " (" .. identity.name .. ")\nBANIU: " .. target_id .. "\nMOTIVO: " .. reason
            vRP.webhook("LINK_DO_WEBHOOK_BANIMENTO", logMessage)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- UNBAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('unban',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			vRP.setBanned(parseInt(args[1]),false)
			TriggerClientEvent("Notify",source,"sucesso","Voce desbaniu o passaporte <b>"..args[1].."</b> da cidade.")
        end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kick',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			local id = vRP.getUserSource(parseInt(args[1]))
			if id then
				vRP.kick(id,"Você foi expulso da cidade.")
				TriggerClientEvent("Notify",source,"sucesso","Voce kickou o passaporte <b>"..args[1].."</b> da cidade.")
            end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK ALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kickall',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local users = vRP.getUsers()
        for k,v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
				vRP.kick(id,"Você foi expulso da cidade.")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- APREENDER
-----------------------------------------------------------------------------------------------------------------------------------------
local itemlist = {"dinheirosujo","algemas","capuz","lockpick","masterpick","maconha","placa","rebite", "WEAPON_SMG", "WEAPON_SPECIALCARBINE",
"orgao","etiqueta","cocaina","pendrive","relogioroubado","pulseiraroubada","anelroubado","colarroubado", "WEAPON_PISTOL_AMMO", "WEAPON_SMG_AMMO", "WEAPON_SHOTGUN_AMMO", "WEAPON_RIFLE_AMMO",
"brincoroubado","carteiraroubada","carregadorroubado","tabletroubado","sapatosroubado","vibradorroubado",
"perfumeroubado","maquiagemroubada","WEAPON_FLARE","WEAPON_KNIFE","WEAPON_DAGGER","WEAPON_KNUCKLE","WEAPON_MACHETE",
"WEAPON_SWITCHBLADE","WEAPON_WRENCH","WEAPON_HAMMER","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_HATCHET","WEAPON_FLASHLIGHT",
"WEAPON_BAT","WEAPON_BOTTLE","WEAPON_BATTLEAXE","WEAPON_POOLCUE","WEAPON_STONE_HATCHET","WEAPON_NIGHTSTICK","WEAPON_COMBATPISTOL",
"WEAPON_REVOLVER_MK2","WEAPON_PISTOL_MK2","WEAPON_PISTOL50","WEAPON_STUNGUN","WEAPON_CARBINERIFLE_MK2","WEAPON_ASSAULTRIFLE_MK2",
"WEAPON_COMPACTRIFLE","WEAPON_SM","WEAPON_MICROSMG","WEAPON_PUMPSHOTGUN_MK2","WEAPON_MUSKET",}

RegisterCommand('apreender',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local user_id = vRP.getUserId(source)

		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			local identity = vRP.getUserIdentity(user_id)
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local nidentity = vRP.getUserIdentity(nuser_id)
				local itens_apreendidos = {}
				local weapons = vRPclient.replaceWeapons(nplayer,{})
				for k,v in pairs(weapons) do
					vRP.giveInventoryItem(nuser_id,k,1)
					if v.ammo > 0 then
						vRP.giveInventoryItem(nuser_id,vRP.itemAmmoList(k),v.ammo)
					end
				end

				local inv = vRP.getInventory(nuser_id)
				for k,v in pairs(itemlist) do
					local amount = vRP.getInventoryItemAmount(nuser_id,v)
					if amount > 0 then
						if vRP.tryGetInventoryItem(nuser_id,v,amount,true) then
							vRP.giveInventoryItem(user_id,v,amount)
						--	table.insert(itens_apreendidos, "[ITEM]: "..vRP.itemNameList(v).." [QUANTIDADE]: "..amount)
						end
					end
				end
				local apreendidos = table.concat(itens_apreendidos, "\n")
				
				TriggerClientEvent("Notify",nplayer,"importante","Todos os seus pertences foram apreendidos.")
				TriggerClientEvent("Notify",source,"importante","Apreendeu todos os pertences da pessoa.")
			end
		end
	end
end)


RegisterCommand('cobrar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local consulta = vRPclient.getNearestPlayer(source,2)
    local nuser_id = vRP.getUserId(consulta)
    local resultado = json.decode(consulta) or 0
    local banco = vRP.getBankMoney(nuser_id)
    local identity =  vRP.getUserIdentity(user_id)
    local identityu = vRP.getUserIdentity(nuser_id)
    if vRP.request(consulta,"Deseja pagar <b>$"..vRP.format(parseInt(args[1])).."</b> dólares para <b>"..identity.name.." "..identity.firstname.."</b>?",30) then
        if banco >= parseInt(args[1]) then
            if parseInt(args[1]) < 0 then
                vRPclient.setHealth(source,10)
                TriggerClientEvent("Notify",source,"negado","Bug corrigido.")
                return
            end
            vRP.setBankMoney(nuser_id,parseInt(banco-args[1]))
            vRP.giveBankMoney(user_id,parseInt(args[1]))

            vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
            TriggerClientEvent("Notify",source,"sucesso","Recebeu <b>$"..vRP.format(parseInt(args[1])).." dólares</b> de <b>"..identityu.name.. " "..identityu.firstname.."</b>.")
            vRPclient._playAnim(nuser_id,true,{{"mp_common","givetake1_a"}},false)
            local player = vRP.getUserSource(parseInt(args[2]))
            if player == nil then
                return
            else
                local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("Notify",player,"importante","<b>"..identity.name.." "..identity.firstname.."</b> transferiu <b>$"..vRP.format(parseInt(args[1])).." dólares</b> para sua conta.")
            end
        else
            TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
        end
    end
end)

RegisterCommand('blips', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        TriggerClientEvent("admin:toggleBlips", source)
    end
end)