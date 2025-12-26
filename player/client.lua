-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = Tunnel.getInterface("player",src)

vSERVER = Tunnel.getInterface("player")
-----------------------------------------------------------------------------------------------------------------------------------------
-- SALÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		vSERVER.rCountSalario()
		Citizen.Wait(60*1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMITADOR DE VELOCIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cr",function(source,args)
    local veh = GetVehiclePedIsIn(PlayerPedId(),false)
    local maxspeed = GetVehicleMaxSpeed(GetEntityModel(veh))
    local vehspeed = GetEntitySpeed(veh)*3.6
    if GetPedInVehicleSeat(veh,-1) == PlayerPedId() and math.ceil(vehspeed) >= 0 and GetEntityModel(veh) ~= -2076478498 and not IsEntityInAir(veh) then
        if args[1] == nil then
            SetEntityMaxSpeed(veh,maxspeed)
            TriggerEvent("Notify","sucesso","Cruiser desligado com sucesso.")
        else
            SetEntityMaxSpeed(veh,0.45*args[1]-0.45)
            TriggerEvent("Notify","sucesso","Velocidade máxima travada em <b>"..args[1].." km/h</b>.")
        end
    end
end)
---------------------------------------------------------------------------------------------
-- COR DA ARMA
---------------------------------------------------------------------------------------------
RegisterNetEvent('changeWeaponColor')
AddEventHandler('changeWeaponColor', function(cor) 
    local tinta = tonumber(cor)
    local ped = PlayerPedId()
    local arma = GetSelectedPedWeapon(ped)
    if tinta >= 0 then
        SetPedWeaponTintIndex(ped,arma,tinta)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setmascara')
AddEventHandler('setmascara',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if modelo == nil then
			vRP._playAnim(true,{{"missfbi4","takeoff_mask"}},false)
			Wait(1100)
			SetPedComponentVariation(ped,1,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") or GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"misscommon@van_put_on_masks","put_on_mask_ps"}},false)
			Wait(1500)
			SetPedComponentVariation(ped,1,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETBLUSA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setblusa')
AddEventHandler('setblusa',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,8,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,8,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,8,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCOLETE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setcolete')
AddEventHandler('setcolete',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,9,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETJAQUETA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setjaqueta')
AddEventHandler('setjaqueta',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,11,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,11,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,11,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMAOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setmaos')
AddEventHandler('setmaos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,3,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,3,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,3,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCALCA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setcalca')
AddEventHandler('setcalca',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
				vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
				Wait(2500)
				SetPedComponentVariation(ped,4,18,0,2)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
				vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
				Wait(2500)
				SetPedComponentVariation(ped,4,15,0,2)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,4,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
			Wait(2500)
			SetPedComponentVariation(ped,4,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETACESSORIOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setacessorios')
AddEventHandler('setacessorios',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			SetPedComponentVariation(ped,7,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETSAPATOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setsapatos')
AddEventHandler('setsapatos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() and not IsPedInAnyVehicle(ped) then
		if not modelo then
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
				vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
				Wait(2200)
				SetPedComponentVariation(ped,6,34,0,2)
				Wait(500)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
				vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
				Wait(2200)
				SetPedComponentVariation(ped,6,35,0,2)
				Wait(500)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
			Wait(2200)
			SetPedComponentVariation(ped,6,parseInt(modelo),parseInt(cor),2)
			Wait(500)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
			Wait(2200)
			SetPedComponentVariation(ped,6,parseInt(modelo),parseInt(cor),2)
			Wait(500)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setchapeu')
AddEventHandler('setchapeu',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"veh@common@fp_helmet@","take_off_helmet_stand"}},false)
			Wait(700)
			ClearPedProp(ped,0)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") and parseInt(modelo) ~= 39 then
			vRP._playAnim(true,{{"veh@common@fp_helmet@","put_on_helmet"}},false)
			Wait(1700)
			SetPedPropIndex(ped,0,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") and parseInt(modelo) ~= 38 then
			vRP._playAnim(true,{{"veh@common@fp_helmet@","put_on_helmet"}},false)
			Wait(1700)
			SetPedPropIndex(ped,0,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETOCULOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setoculos')
AddEventHandler('setoculos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and src.checkRoupas() then
		if not modelo then
			vRP._playAnim(true,{{"mini@ears_defenders","takeoff_earsdefenders_idle"}},false)
			Wait(500)
			ClearPedProp(ped,1)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"misscommon@van_put_on_masks","put_on_mask_ps"}},false)
			Wait(800)
			SetPedPropIndex(ped,1,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"misscommon@van_put_on_masks","put_on_mask_ps"}},false)
			Wait(800)
			SetPedPropIndex(ped,1,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMOCHILA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setmochila')
AddEventHandler('setmochila',function(modelo,cor)
    local ped = PlayerPedId()
    if GetEntityHealth(ped) > 101 and src.checkRoupas() then
        if not modelo then
            vRP._playAnim(true,{{"missmic4","michael_tux_fidget"}},false)
            Wait(2500)
            ClearPedTasks(ped)
            SetPedComponentVariation(ped,5,15,0,2)
            return
        end
        if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
            vRP._playAnim(true,{{"missmic4","michael_tux_fidget"}},false)
            Wait(2500)
            ClearPedTasks(ped)
            SetPedComponentVariation(ped,5,parseInt(modelo),parseInt(cor),2)
        elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
            vRP._playAnim(true,{{"missmic4","michael_tux_fidget"}},false)
            Wait(2500)
            ClearPedTasks(ped)
            SetPedComponentVariation(ped,5,parseInt(modelo),parseInt(cor),2)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /RMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("rmascara")
AddEventHandler("rmascara",function()
	SetPedComponentVariation(PlayerPedId(),1,0,0,2)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /RCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("rchapeu")
AddEventHandler("rchapeu",function()
	ClearPedProp(PlayerPedId(),0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /TOW
-----------------------------------------------------------------------------------------------------------------------------------------
local reboque = nil
local rebocado = nil
RegisterCommand("tow",function(source,args)
    local vehicle = GetPlayersLastVehicle()
    local vehicletow = IsVehicleModel(vehicle,GetHashKey("flatbed"))

    if vehicletow and not IsPedInAnyVehicle(PlayerPedId()) then
        rebocado = getVehicleInDirection(GetEntityCoords(PlayerPedId()),GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,5.0,0.0))
        if IsEntityAVehicle(vehicle) and IsEntityAVehicle(rebocado) then
            TriggerServerEvent("trytow",VehToNet(vehicle),VehToNet(rebocado))
        end
    end
end)

RegisterNetEvent('synctow')
AddEventHandler('synctow',function(vehid,rebid)
    if NetworkDoesNetworkIdExist(vehid) and NetworkDoesNetworkIdExist(rebid) then
        local vehicle = NetToVeh(vehid)
        local rebocado = NetToVeh(rebid)
        if DoesEntityExist(vehicle) and DoesEntityExist(rebocado) then
            if reboque == nil then
                if vehicle ~= rebocado then
                    local min,max = GetModelDimensions(GetEntityModel(rebocado))
                    AttachEntityToEntity(rebocado,vehicle,GetEntityBoneIndexByName(vehicle,"bodyshell"),0,-2.2,0.4-min.z,0,0,0,1,1,0,1,0,1)
                    reboque = rebocado
                end
            else
                AttachEntityToEntity(reboque,vehicle,20,-0.5,-15.0,-0.3,0.0,0.0,0.0,false,false,true,false,20,true)
                DetachEntity(reboque,false,false)
                PlaceObjectOnGroundProperly(reboque)
                reboque = nil
                rebocado = nil
            end
        end
    end
end)

function getVehicleInDirection(coordsfrom,coordsto)
	local handle = CastRayPointToPoint(coordsfrom.x,coordsfrom.y,coordsfrom.z,coordsto.x,coordsto.y,coordsto.z,10,PlayerPedId(),false)
	local a,b,c,d,vehicle = GetRaycastResult(handle)
	return vehicle
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FPS
-----------------------------------------------------------------------------------------------------------------------------------------
local commandFps = false
RegisterCommand("fps",function(source,args,rawCommand)
	if commandFps then
		ClearTimecycleModifier()
		commandFps = false
	else
		SetTimecycleModifier("cinema")
		commandFps = true
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNCDOORS
-----------------------------------------------------------------------------------------------------------------------------------------
local doorStatus = { ["1"] = 0, ["2"] = 1, ["3"] = 2, ["4"] = 3, ["5"] = 5, ["6"] = 4 }
RegisterNetEvent("player:syncDoors")
AddEventHandler("player:syncDoors",function(Network,Active)
	if NetworkDoesNetworkIdExist(Network) then
		local v = NetToEnt(Network)
		if DoesEntityExist(v) and GetVehicleDoorLockStatus(v) == 1 then
			if doorStatus[Active] then
				if GetVehicleDoorAngleRatio(v,doorStatus[Active]) == 0 then
					SetVehicleDoorOpen(v,doorStatus[Active],0,0)
				else
					SetVehicleDoorShut(v,doorStatus[Active],0)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SEATPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("player:seatPlayer")
AddEventHandler("player:seatPlayer",function(Index)
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)

		if Index == "0" then
			if IsVehicleSeatFree(Vehicle,-1) then
				SetPedIntoVehicle(Ped,Vehicle,-1)
			end
		elseif Index == "1" then
			if IsVehicleSeatFree(Vehicle,0) then
				SetPedIntoVehicle(Ped,Vehicle,0)
			end
		else
			for Seat = 1,10 do
				if IsVehicleSeatFree(Vehicle,Seat) then
					SetPedIntoVehicle(Ped,Vehicle,Seat)
					break
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNCWINS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("player:syncWins")
AddEventHandler("player:syncWins",function(Network,Active)
	if NetworkDoesNetworkIdExist(Network) then
		local Vehicle = NetToEnt(Network)
		if DoesEntityExist(Vehicle) then
			if Active == "1" then
				RollUpWindow(Vehicle,0)
				RollUpWindow(Vehicle,1)
				RollUpWindow(Vehicle,2)
				RollUpWindow(Vehicle,3)
			else
				RollDownWindow(Vehicle,0)
				RollDownWindow(Vehicle,1)
				RollDownWindow(Vehicle,2)
				RollDownWindow(Vehicle,3)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRUNKABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local inTrunk = false
local trunkPlate = ""
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:ENTERTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("player:enterTrunk")
AddEventHandler("player:enterTrunk",function()
	local ped = PlayerPedId()

	if not IsPedInAnyVehicle(ped) then
		if not inTrunk then
			local Vehicle,Network,Plate = vRP.VehicleList(7)
			if DoesEntityExist(Vehicle) and GetVehicleDoorsLockedForPlayer(Vehicle,PlayerId()) ~= 1 then
				local trunk = GetEntityBoneIndexByName(Vehicle,"boot")
				local speed = GetEntitySpeed(Vehicle) * 3.6
				if trunk ~= -1 and speed <= 3 then
					local coords = GetEntityCoords(ped)
					local coordsEnt = GetWorldPositionOfEntityBone(Vehicle,trunk)
					local distance = #(coords - coordsEnt)
					if distance <= 3.0 then
						if GetVehicleDoorAngleRatio(Vehicle,5) < 0.9 and GetVehicleDoorsLockedForPlayer(Vehicle,PlayerId()) ~= 1 then
							trunkPlate = Plate
							SetCarBootOpen(Vehicle)
							SetEntityVisible(ped,false,false)
							Citizen.Wait(750)
							AttachEntityToEntity(ped,Vehicle,-1,0.0,-2.2,0.5,0.0,0.0,0.0,false,false,false,false,20,true)
							Citizen.Wait(500)
							SetVehicleDoorShut(Vehicle,5)
							blockCommands = true
							inTrunk = true
						end
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADINTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local timeDistance = 999

		if inTrunk then
			local ped = PlayerPedId()
			local vehicle = GetEntityAttachedTo(ped)
			if DoesEntityExist(vehicle) then
				timeDistance = 1

				DisablePlayerFiring(ped,true)

				if IsEntityVisible(ped) then
					SetEntityVisible(ped,false,false)
				end

				if IsControlJustPressed(1,38) then
					SetCarBootOpen(vehicle)
					Citizen.Wait(750)
					inTrunk = false
					blockCommands = false
					DetachEntity(ped,false,false)
					SetEntityVisible(ped,true,false)
					SetEntityCoords(ped,GetOffsetFromEntityInWorldCoords(ped,0.0,-1.5,-0.25),1,0,0,0)
					Citizen.Wait(500)
					SetVehicleDoorShut(vehicle,5)
				end
			else
				inTrunk = false
				blockCommands = false
				DetachEntity(ped,false,false)
				SetEntityVisible(ped,true,false)
				SetEntityCoords(ped,GetOffsetFromEntityInWorldCoords(ped,0.0,-1.5,-0.25),1,0,0,0)
			end
		end

		Citizen.Wait(timeDistance)
	end
end)
--==========================================================================================================--
--============================================= HOSPITAL ===================================================--
--==========================================================================================================--
local tratamento = false
RegisterNetEvent("tratamento")
AddEventHandler("tratamento",function()
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped)

    local x,y,z = table.unpack(GetEntityCoords(ped))
    SetEntityHealth(ped,health)

    if tratamento then
        return
    end

    tratamento = true
    TriggerEvent("Notify","paramedic","Tratamento iniciado, aguarde a liberação do paramédico.",8000)

    if tratamento then
        repeat
            Citizen.Wait(600)
            if GetEntityHealth(ped) > 101 then
                SetEntityHealth(ped,GetEntityHealth(ped)+1)
            end
        until GetEntityHealth(ped) >= 400 or GetEntityHealth(ped) <= 101
            TriggerEvent("Notify","paramedic","Tratamento concluido.",8000)
            tratamento = false
    end
end)
--==========================================================================================================--
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKIN
-----------------------------------------------------------------------------------------------------------------------------------------
local checkIn = {
	{ -673.77,325.54,88.02,"HospitalNorte" },
	{ -675.13,326.46,83.09,"HospitalNorte" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BEDSIN
-----------------------------------------------------------------------------------------------------------------------------------------
local bedsIn = {

	["HospitalNorte"] = {
		{ -667.12,314.81,88.62,0.0 },
		{ -671.65,315.12,88.62,0.0 },
		{ -676.25,315.62,88.62,0.0 }
	},

	["HospitalSul"] = {
		{ 1126.65,-1547.11,35.9,0.0 },
		{ 1123.56,-1547.11,35.9,0.0 },
		{ 1120.41,-1547.11,35.9,0.0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADCHECKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("checkin:initCheck")
AddEventHandler("checkin:initCheck",function()
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)

	for _,v in pairs(checkIn) do
		local distance = #(coords - vector3(v[1],v[2],v[3]))
		if distance <= 2 then
			local checkBusy = 0
			local checkSelected = v[4]

			for _,v in pairs(bedsIn[checkSelected]) do
				checkBusy = checkBusy + 1

				local checkPos = getNearestPlayer(v[1],v[2],v[3])
				if not checkPos then
					if src.paymentCheckin() then

						if GetEntityHealth(ped) <= 101 then
							vRP.revivePlayer(102)
						end

						DoScreenFadeOut(0)
						Citizen.Wait(1000)
						
						SetEntityCoords(ped,v[1],v[2],v[3],1,0,0,0)
						SetEntityHeading(ped,GetEntityHeading(object) - 180.0)
						vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)

						Citizen.Wait(1000)

						Citizen.Wait(1000)
						DoScreenFadeIn(1000)
					end

					break
				end
			end

			if checkBusy >= #bedsIn[checkSelected] then
				TriggerEvent("Notify","importante","Macas ocupadas, aguarde um momento.",5000)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEARESTPLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function getNearestPlayers(x,y,z)
	local userList = {}
	local ped = PlayerPedId()
	local userPlayers = GetPlayers()

	for k,v in pairs(userPlayers) do
		local uPlayer = GetPlayerFromServerId(k)
		if uPlayer ~= PlayerId() and NetworkIsPlayerConnected(uPlayer) then
			local uPed = GetPlayerPed(uPlayer)
			local uCoords = GetEntityCoords(uPed)
			local distance = #(uCoords - vector3(x,y,z))
			if distance <= 2 then
				userList[uPlayer] = distance
			end
		end
	end

	return userList
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEARESTPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
function getNearestPlayer(x,y,z)
	local userSelect = false
	local minRadius = 2.0001
	local userList = getNearestPlayers(x,y,z)

	for _,_Infos in pairs(userList) do
		if _Infos <= minRadius then
			minRadius = _Infos
			userSelect = true
		end
	end

	return userSelect
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function GetPlayers()
	local pedList = {}

	for _,_player in ipairs(GetActivePlayers()) do
		pedList[GetPlayerServerId(_player)] = true
	end

	return pedList
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('reparar')
AddEventHandler('reparar',function(vehicle)
	TriggerServerEvent("tryreparar",VehToNet(vehicle))
end)

RegisterNetEvent('syncreparar')
AddEventHandler('syncreparar',function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToVeh(index)
		local fuel = GetVehicleFuelLevel(v)
		if DoesEntityExist(v) then
			if IsEntityAVehicle(v) then
				SetVehicleFixed(v)
				SetVehicleDirtLevel(v,0.0)
				SetVehicleUndriveable(v,false)
				SetEntityAsMissionEntity(v,true,true)
				SetVehicleOnGroundProperly(v)
				SetVehicleFuelLevel(v,fuel)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR MOTOR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('repararmotor')
AddEventHandler('repararmotor',function(vehicle)
	TriggerServerEvent("trymotor",VehToNet(vehicle))
end)

RegisterNetEvent('syncmotor')
AddEventHandler('syncmotor',function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToVeh(index)
		if DoesEntityExist(v) then
			if IsEntityAVehicle(v) then
				SetVehicleEngineHealth(v,1000.0)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MANOBRAS
-----------------------------------------------------------------------------------------------------------------------------------------
local comecar = false
local dict = "rcmextreme2atv"
local anims = { "idle_b", "idle_c", "idle_d", "idle_e" }

Citizen.CreateThread(function()
	while true do 
		if comecar == true then
			local idle = 999
			local ped = PlayerPedId()
			local bike = GetVehiclePedIsIn(ped)
			local speed = GetEntitySpeed(bike)*3.6
			
			if IsPedOnAnyBike(ped) then
				if speed >= 10 then
					idle = 1
					while not HasAnimDictLoaded(dict) do 
						Wait(0)
						RequestAnimDict(dict)
					end
	
					if IsControlJustPressed(0,174) then -- Seta Esquerda ou NumPad 4 = Manobra esquerda
						TaskPlayAnim(ped,dict,anims[1], 8.0, -8.0, -1, 32, 0, false, false, false)
						
					elseif IsControlJustPressed(0,175) then -- Seta Direita ou NumPad 6 = Manobra direita
						TaskPlayAnim(ped,dict,anims[2], 8.0, -8.0, -1, 32, 0, false, false, false)
	
					elseif IsControlJustPressed(0,173) then -- Seta para Baixo ou NumPad 5 = Manobra lados
						TaskPlayAnim(ped,dict,anims[3], 8.0, -8.0, -1, 32, 0, false, false, false)
	
					elseif IsControlJustPressed(0,27) then -- Seta para Cima ou NumPad 8 = Manobra cima
						TaskPlayAnim(ped,dict,anims[4], 8.0, -8.0, -1, 32, 0, false, false, false)
					end
				end
			end
		end
		Citizen.Wait(idle)
	end
end)

--[ COMANDOS ]-------------------------------------------------------------------
RegisterCommand("manobras",function(raw,args)
	if comecar == false then
		comecar = true
		TriggerEvent("Notify","sucesso","Você está preparado para fazer as manobras")
	else
		comecar = false
		TriggerEvent("Notify","importante","Você está parou de fazer manobras")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DENSITY CONTROLLER (FPS BOOST)
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        -- Densidade configurada baixa para otimização (0.1 a 0.5 é recomendado para RP)
        local density = 0.4 
        
        SetParkedVehicleDensityMultiplierThisFrame(density)
        SetVehicleDensityMultiplierThisFrame(density)
        SetRandomVehicleDensityMultiplierThisFrame(density)
        SetPedDensityMultiplierThisFrame(density)
        SetScenarioPedDensityMultiplierThisFrame(density, density) -- Caminhando e Cenário
        
        -- Remove armas dos NPCs (Evita que caiam armas no chão)
        RemoveAllPickupsOfType(0xDF711959) -- Carbine
        RemoveAllPickupsOfType(0xF9AFB48F) -- Pistol
        RemoveAllPickupsOfType(0xA9355DCD) -- Shotgun

        -- Desativa sons de sirene ambiente
        DistantCopCarSirens(false)
        
        Citizen.Wait(0)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NO HIP FIRE & NO PISTOL WHIP (Correções de Combate)
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local idle = 1000
        local ped = PlayerPedId()
        
        if IsPedArmed(ped, 6) then
            idle = 5
            
            -- Desativa Tiro sem Mirar (Hip Fire)
            if not IsPlayerFreeAiming(PlayerId()) then
                DisableControlAction(0, 140, true) -- Melee Attack Light
                DisableControlAction(0, 141, true) -- Melee Attack Heavy
                DisableControlAction(0, 142, true) -- Melee Attack Alternate
            end
            
            -- Desativa Coronhada (Dano Melee com arma na mão)
            if IsPedInMeleeCombat(ped) then
                DisableControlAction(0, 263, true) 
                DisableControlAction(0, 140, true) 
                DisableControlAction(0, 141, true) 
                DisableControlAction(0, 142, true) 
            end
        end
        
        Citizen.Wait(idle)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUTO DELETE BROKEN/EMPTY VEHICLES (Otimização)
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Executa a cada 1 minuto
        local vehicles = GetGamePool('CVehicle')
        for _, vehicle in ipairs(vehicles) do
            -- Se o veículo não tem motorista E (está de cabeça para baixo OU explodido)
            if DoesEntityExist(vehicle) then 
                if GetPedInVehicleSeat(vehicle, -1) == 0 then
                    -- Se estiver quebrado/inutilizável
                    if IsEntityUpsidedown(vehicle) or GetVehicleEngineHealth(vehicle) <= 0 or IsVehicleTyreBurst(vehicle, 0, false) and IsVehicleTyreBurst(vehicle, 1, false) then
                        -- Tenta deletar usando a função que criamos anteriormente
                        tvRP.deleteVehicle(vehicle)
                    end
                    
                    -- OPCIONAL: Deletar qualquer carro vazio longe de players
                    -- (Requer cálculo de distância, pode ser perigoso se não configurado bem, então deixei só os quebrados por segurança)
                end
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE PONTO (CLIENT)
-----------------------------------------------------------------------------------------------------------------------------------------
local pontoLocais = {
    { x = 441.83, y = -982.05, z = 30.69, text = "PONTO DA POLÍCIA" }, -- DP Mission Row
    { x = 299.12, y = -597.51, z = 43.28, text = "PONTO DO HOSPITAL" }, -- Hospital Pillbox
    { x = -347.11, y = -133.32, z = 39.01, text = "PONTO DA MECÂNICA" }, -- Mecânica LSC
    -- Adicione mais locais aqui: { x = X, y = Y, z = Z, text = "NOME" },
}

-- Função para desenhar Texto 3D
function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
    while true do
        local idle = 1000
        local ped = PlayerPedId()
        local pCoords = GetEntityCoords(ped)

        for _, localPonto in pairs(pontoLocais) do
            local distance = #(pCoords - vector3(localPonto.x, localPonto.y, localPonto.z))
            
            if distance <= 5.0 then
                idle = 5
                DrawText3D(localPonto.x, localPonto.y, localPonto.z, "~g~[E]~w~ PARA BATER "..localPonto.text)
                
                if distance <= 1.5 then
                    if IsControlJustPressed(0, 38) then -- Tecla E
                        TriggerServerEvent("ponto:trocar")
                    end
                end
            end
        end
        Citizen.Wait(idle)
    end
end)