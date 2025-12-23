-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE BASE
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vRP/create_user","INSERT INTO vrp_users(whitelisted,banned) VALUES(false,false); SELECT LAST_INSERT_ID() AS id")
vRP.prepare("vRP/add_identifier","INSERT INTO vrp_user_ids(identifier,user_id) VALUES(@identifier,@user_id)")
vRP.prepare("vRP/userid_byidentifier","SELECT user_id FROM vrp_user_ids WHERE identifier = @identifier")

vRP.prepare("vRP/set_userdata","REPLACE INTO vrp_user_data(user_id,dkey,dvalue) VALUES(@user_id,@key,@value)")
vRP.prepare("vRP/get_userdata","SELECT dvalue FROM vrp_user_data WHERE user_id = @user_id AND dkey = @key")

vRP.prepare("vRP/set_srvdata","REPLACE INTO vrp_srv_data(dkey,dvalue) VALUES(@key,@value)")
vRP.prepare("vRP/get_srvdata","SELECT dvalue FROM vrp_srv_data WHERE dkey = @key")
vRP.prepare("vRP/rem_srvdata","DELETE FROM vrp_srv_data WHERE dkey = @dkey")

vRP.prepare("vRP/get_banned","SELECT banned FROM vrp_users WHERE id = @user_id")
vRP.prepare("vRP/set_banned","UPDATE vrp_users SET banned = @banned WHERE id = @user_id")
vRP.prepare("vRP/get_whitelisted","SELECT whitelisted FROM vrp_users WHERE id = @user_id")
vRP.prepare("vRP/set_whitelisted","UPDATE vrp_users SET whitelisted = @whitelisted WHERE id = @user_id")
vRP.prepare("vRP/set_last_login","UPDATE vrp_users SET last_login = @last_login, ip = @ip WHERE id = @user_id")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE IDENTIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vRP/get_user_identity","SELECT * FROM vrp_user_identities WHERE user_id = @user_id")
vRP.prepare("vRP/init_user_identity","INSERT IGNORE INTO vrp_user_identities(user_id,registration,phone,firstname,name,age) VALUES(@user_id,@registration,@phone,@firstname,@name,@age)")
vRP.prepare("vRP/get_userbyreg","SELECT user_id FROM vrp_user_identities WHERE registration = @registration")
vRP.prepare("vRP/get_userbyphone","SELECT user_id FROM vrp_user_identities WHERE phone = @phone")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vRP/money_init_user","INSERT IGNORE INTO vrp_user_moneys(user_id,wallet,bank,gemas) VALUES(@user_id,@wallet,@bank,@gemas)")
vRP.prepare("vRP/get_money","SELECT wallet,bank,gemas FROM vrp_user_moneys WHERE user_id = @user_id")
vRP.prepare("vRP/set_money","UPDATE vrp_user_moneys SET wallet = @wallet, bank = @bank, gemas = @gemas WHERE user_id = @user_id")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE INVENTARIO
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vRP/inv_BauCarro", "SELECT * FROM vrp_srv_data WHERE `dkey` LIKE '%BauCarro:%'")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vehicles/plateVehicles","SELECT * FROM vrp_user_vehicles WHERE plate = @plate")
vRP.prepare("vehicles/UserVehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
vRP.prepare("vehicles/removeVehicles","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/selectVehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/selectVehicle","SELECT * FROM vrp_user_vehicles WHERE Plate = @plate AND Vehicle = @vehicle")
vRP.prepare("vehicles/paymentArrest","UPDATE vrp_user_vehicles SET arrest = 0 WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/moveVehicles","UPDATE vrp_user_vehicles SET user_id = @OtherPassport WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/plateVehiclesUpdate","UPDATE vrp_user_vehicles SET plate = @plate WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/rentalVehiclesDays","UPDATE vrp_user_vehicles SET rental = rental + 2592000 WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/updateVehiclesTax","UPDATE vrp_user_vehicles SET tax = UNIX_TIMESTAMP() + 2592000 WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/rentalVehiclesUpdate","UPDATE vrp_user_vehicles SET rental = UNIX_TIMESTAMP() + 2592000 WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/addVehicles","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,plate,work,tax) VALUES(@user_id,@vehicle,@plate,@work,UNIX_TIMESTAMP() + 604800)")
vRP.prepare("vehicles/rentalVehicles","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,plate,work,rental,tax) VALUES(@user_id,@vehicle,@plate,@work,UNIX_TIMESTAMP() + 2592000,UNIX_TIMESTAMP() + 604800)")
vRP.prepare("vehicles/updateVehicles","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, health = @health, fuel = @fuel, doors = @doors, windows = @windows, tyres = @tyres, nitro = @nitro WHERE user_id = @user_id AND vehicle = @vehicle")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROPERTYS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("propertys/All","SELECT * FROM vrp_homes")
vRP.prepare("propertys/Sell","DELETE FROM vrp_homes WHERE Name = @name")
vRP.prepare("propertys/Exist","SELECT * FROM vrp_homes WHERE Name = @name")
vRP.prepare("propertys/Garages","SELECT * FROM vrp_homes WHERE Garage IS NOT NULL")
vRP.prepare("propertys/AllUser","SELECT * FROM vrp_homes WHERE user_id = @user_id")
vRP.prepare("propertys/Garage","UPDATE vrp_homes SET Garage = @garage WHERE Name = @name")
vRP.prepare("propertys/Morador","UPDATE vrp_homes SET Morador = @morador WHERE Name = @name")
vRP.prepare("propertys/Vault","UPDATE vrp_homes SET Vault = Vault + @weight WHERE Name = @name")
vRP.prepare("propertys/Tax","UPDATE vrp_homes SET Tax = UNIX_TIMESTAMP() + 2592000 WHERE Name = @name")
vRP.prepare("propertys/Buy","INSERT INTO vrp_homes(Name,Interior,user_id,Vault,Tax) VALUES(@name,@interior,@user_id,@vault,@tax)")