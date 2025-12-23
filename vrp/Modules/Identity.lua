-----------------------------------------------------------------------------------------------------------------------------------------
-- GETUSERIDENTITY
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getUserIdentity(user_id,cbr)
	local rows = vRP.query("vRP/get_user_identity",{ user_id = user_id })
	return rows[1]
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETUSERBYREGISTRATION
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getUserByRegistration(registration, cbr)
	local rows = vRP.query("vRP/get_userbyreg",{ registration = registration or "" })
	if #rows > 0 then
		return rows[1].user_id
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETUSERBYPHONE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getUserByPhone(phone, cbr)
	local rows = vRP.query("vRP/get_userbyphone",{ phone = phone or "" })
	if #rows > 0 then
		return rows[1].user_id
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PASSPORTPLATE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.PassportPlate(Plate)
    return vRP.query("vehicles/plateVehicles", { plate = Plate })[1] or false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATESTRINGNUMBER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.generateStringNumber(format)
	local abyte = string.byte("A")
	local zbyte = string.byte("0")
	local number = ""
	for i=1,#format do
		local char = string.sub(format,i,i)
    	if char == "D" then number = number..string.char(zbyte+math.random(0,9))
		elseif char == "L" then number = number..string.char(abyte+math.random(0,25))
		else number = number..char end
	end
	return number
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATEREGISTRATIONNUMBER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.generateRegistrationNumber(cbr)
	local user_id = nil
	local registration = ""
	repeat
		registration = vRP.generateStringNumber("DDLLLDDD")
		user_id = vRP.getUserByRegistration(registration)
	until not user_id

	return registration
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATEPHONENUMBER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.generatePhoneNumber(cbr)
	local user_id = nil
	local phone = ""

	repeat
		phone = vRP.generateStringNumber("DDD-DDD")
		user_id = vRP.getUserByPhone(phone)
	until not user_id

	return phone
end

AddEventHandler("vRP:playerJoin",function(user_id,source,name)
	if not vRP.getUserIdentity(user_id) then

		local registration = vRP.generateRegistrationNumber()
		local phone = vRP.generatePhoneNumber()
		local data = vRP.getUserDataTable(user_id)

		vRP.execute("vRP/init_user_identity",{
			user_id = user_id,
			registration = registration,
			phone = phone,
			firstname = "Indigente",
			name = "Individuo",
			age = 21
		})

		if not data.inventory then
			data.inventory = {}
		end

		if not data.mochila then
			data.mochila = { quantidade = 0, perder = 0 }
		end
	end
end)