-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	-- Boats
	["dinghy"] = {
		["Name"] = "Dinghy",
		["Weight"] = 0,
		["Price"] = 100000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["dinghy2"] = {
		["Name"] = "Dinghy 2",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["dinghy3"] = {
		["Name"] = "Dinghy 3",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["dinghy4"] = {
		["Name"] = "Dinghy 4",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["jetmax"] = {
		["Name"] = "Jetmax",
		["Weight"] = 0,
		["Price"] = 300000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["marquis"] = {
		["Name"] = "Marquis",
		["Weight"] = 0,
		["Price"] = 700000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["seashark"] = {
		["Name"] = "Seashark",
		["Weight"] = 0,
		["Price"] = 150000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["seashark2"] = {
		["Name"] = "Seashark 2",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["seashark3"] = {
		["Name"] = "Seashark 3",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["speeder"] = {
		["Name"] = "Speeder",
		["Weight"] = 0,
		["Price"] = 350000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["speeder2"] = {
		["Name"] = "Speeder 2",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["squalo"] = {
		["Name"] = "Squalo",
		["Weight"] = 0,
		["Price"] = 120000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["submersible"] = {
		["Name"] = "Submersible",
		["Weight"] = 200,
		["Price"] = 1000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["submersible2"] = {
		["Name"] = "Submersible 2",
		["Weight"] = 200,
		["Price"] = 1200000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["suntrap"] = {
		["Name"] = "Suntrap",
		["Weight"] = 0,
		["Price"] = 100000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["toro"] = {
		["Name"] = "Toro",
		["Weight"] = 0,
		["Price"] = 650000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["toro2"] = {
		["Name"] = "Toro 2",
		["Weight"] = 200,
		["Price"] = 650000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["tropic"] = {
		["Name"] = "Tropic",
		["Weight"] = 0,
		["Price"] = 280000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["tropic2"] = {
		["Name"] = "Tropic 2",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["tug"] = {
		["Name"] = "Tug",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["avisa"] = {
		["Name"] = "Avisa",
		["Weight"] = 20,
		["Price"] = 1800000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["longfin"] = {
		["Name"] = "Longfin",
		["Weight"] = 20,
		["Price"] = 500000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},

	-- Commercials
	["benson"] = {
		["Name"] = "Benson",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["biff"] = {
		["Name"] = "Biff",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Caminhões"
	},
	["hauler"] = {
		["Name"] = "Hauler",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Caminhões"
	},
	["hauler2"] = {
		["Name"] = "Hauler 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Caminhões"
	},
	["mule"] = {
		["Name"] = "Mule",
		["Weight"] = 150,
		["Price"] = 175000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["mule2"] = {
		["Name"] = "Mule 2",
		["Weight"] = 150,
		["Price"] = 525000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["mule3"] = {
		["Name"] = "Mule 3",
		["Weight"] = 200,
		["Price"] = 675000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["mule4"] = {
		["Name"] = "Mule 4",
		["Weight"] = 250,
		["Price"] = 825000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["packer"] = {
		["Name"] = "Packer",
		["Weight"] = 0,
		["Price"] = 50000000,
		["Mode"] = "work",
		["Gemstone"] = 0,
		["Class"] = "Caminhões"
	},
	["phantom"] = {
		["Name"] = "Phantom",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Caminhões"
	},
	["pounder"] = {
		["Name"] = "Pounder",
		["Weight"] = 250,
		["Price"] = 750000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["pounder2"] = {
		["Name"] = "Pounder 2",
		["Weight"] = 200,
		["Price"] = 850000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Caminhões"
	},
	["terbyte"] = {
		["Name"] = "Terbyte",
		["Weight"] = 3500,
		["Price"] = 1800000,
		["Mode"] = "Rental",
		["Gemstone"] = 280,
		["Class"] = "Caminhões"
	},


	-- Compacts


	["asbo"] = {
		["Name"] = "Asbo",
		["Weight"] = 20,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["blista"] = {
		["Name"] = "Blista",
		["Weight"] = 20,
		["Price"] = 40000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["brioso"] = {
		["Name"] = "Brioso",
		["Weight"] = 20,
		["Price"] = 30000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["club"] = {
		["Name"] = "Club",
		["Weight"] = 20,
		["Price"] = 65000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["dilettante"] = {
		["Name"] = "Dilettante",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["dilettante2"] = {
		["Name"] = "Dilettante 2",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["kanjo"] = {
		["Name"] = "Kanjo",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["issi2"] = {
		["Name"] = "Issi 2",
		["Weight"] = 25,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["issi3"] = {
		["Name"] = "Issi 3",
		["Weight"] = 35,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["issi4"] = {
		["Name"] = "Issi 4",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["issi5"] = {
		["Name"] = "Issi 5",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["issi6"] = {
		["Name"] = "Issi 6",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["panto"] = {
		["Name"] = "Panto",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["prairie"] = {
		["Name"] = "Prairie",
		["Weight"] = 15,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["rhapsody"] = {
		["Name"] = "Rhapsody",
		["Weight"] = 15,
		["Price"] = 10000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["brioso2"] = {
		["Name"] = "Brioso 2",
		["Weight"] = 20,
		["Price"] = 40000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["weevil"] = {
		["Name"] = "Weevil",
		["Weight"] = 35,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},


	-- Coupes


	["cogcabrio"] = {
		["Name"] = "Cogcabrio",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["exemplar"] = {
		["Name"] = "Exemplar",
		["Weight"] = 20,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["f620"] = {
		["Name"] = "F620",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["felon"] = {
		["Name"] = "Felon",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["felon2"] = {
		["Name"] = "Felon 2",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["jackal"] = {
		["Name"] = "Jackal",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["oracle"] = {
		["Name"] = "Oracle",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["oracle2"] = {
		["Name"] = "Oracle 2",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["sentinel"] = {
		["Name"] = "Sentinel",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["sentinel2"] = {
		["Name"] = "Sentinel 2",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["windsor"] = {
		["Name"] = "Windsor",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["windsor2"] = {
		["Name"] = "Windsor 2",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["zion"] = {
		["Name"] = "Zion",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["zion2"] = {
		["Name"] = "Zion 2",
		["Weight"] = 35,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},
	["previon"] = {
		["Name"] = "Previon",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Cupês"
	},


	-- Helicopters


	["frogger"] = {
		["Name"] = "Frogger",
		["Weight"] = 0,
		["Price"] = 8000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Helicópteros"
	},
	["frogger2"] = {
		["Name"] = "Frogger 2",
		["Weight"] = 200,
		["Price"] = 9000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Helicópteros"
	},
	["havok"] = {
		["Name"] = "Havok",
		["Weight"] = 100,
		["Price"] = 552500,
		["Mode"] = "Work",
		["Gemstone"] = 7500,
		["Class"] = "Helicópteros"
	},
	["maverick"] = {
		["Name"] = "Maverick",
		["Weight"] = 100,
		["Price"] = 3500000,
		["Mode"] = "Work",
		["Gemstone"] = 12500,
		["Class"] = "Helicópteros"
	},
	["mh60l"] = {
		["Name"] = "MH-60",
		["Weight"] = 100,
		["Price"] = 3500000,
		["Mode"] = "Work",
		["Gemstone"] = 12500,
		["Class"] = "Helicópteros"
	},


	["seasparrow"] = {
		["Name"] = "Seasparrow",
		["Weight"] = 200,
		["Price"] = 800000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Helicópteros"
	},
	["supervolito"] = {
		["Name"] = "Supervolito",
		["Weight"] = 100,
		["Price"] = 50000000,
		["Mode"] = "Work",
		["Gemstone"] = 12500,
		["Class"] = "Helicópteros"
	},
	["supervolito2"] = {
		["Name"] = "Supervolito 2",
		["Weight"] = 200,
		["Price"] = 70000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Helicópteros"
	},
	["volatus"] = {
		["Name"] = "Volatus",
		["Weight"] = 100,
		["Price"] = 85000000,
		["Mode"] = "Work",
		["Gemstone"] = 12500,
		["Class"] = "Helicópteros"
	},
	["seasparrow2"] = {
		["Name"] = "Seasparrow 2",
		["Weight"] = 20,
		["Price"] = 650000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Helicópteros"
	},


	-- Industrial	


	["flatbed3"] = {
		["Name"] = "Reboque Mec",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Industriais"
	},
	["guardian"] = {
		["Name"] = "Guardian",
		["Weight"] = 200,
		["Price"] = 220000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Industriais"
	},


	-- Motorcycles


	["akuma"] = {
		["Name"] = "Akuma",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["avarus"] = {
		["Name"] = "Avarus",
		["Weight"] = 20,
		["Price"] = 120000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["bagger"] = {
		["Name"] = "Bagger",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["bati"] = {
		["Name"] = "Bati",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["bati2"] = {
		["Name"] = "Bati 2",
		["Weight"] = 20,
		["Price"] = 240000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["bf400"] = {
		["Name"] = "Bf400",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["carbonrs"] = {
		["Name"] = "Carbon RS",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["chimera"] = {
		["Name"] = "Chimera",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["cliffhanger"] = {
		["Name"] = "Cliffhanger",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["daemon"] = {
		["Name"] = "Daemon",
		["Weight"] = 20,
		["Price"] = 140000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["daemon2"] = {
		["Name"] = "Daemon 2",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["defiler"] = {
		["Name"] = "Defiler",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["deathbike"] = {
		["Name"] = "Deathbike",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["deathbike2"] = {
		["Name"] = "Deathbike 2",
		["Weight"] = 20,
		["Price"] = 65000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["deathbike3"] = {
		["Name"] = "Deathbike 3",
		["Weight"] = 20,
		["Price"] = 65000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["diablous"] = {
		["Name"] = "Diablous",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["diablous2"] = {
		["Name"] = "Diablous 2",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["double"] = {
		["Name"] = "Double",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["enduro"] = {
		["Name"] = "Enduro",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["esskey"] = {
		["Name"] = "Esskey",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["faggio"] = {
		["Name"] = "Faggio",
		["Weight"] = 10,
		["Price"] = 2000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["faggio2"] = {
		["Name"] = "Faggio 2",
		["Weight"] = 10,
		["Price"] = 2000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["faggio3"] = {
		["Name"] = "Faggio 3",
		["Weight"] = 10,
		["Price"] = 2000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["fcr"] = {
		["Name"] = "Fcr",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["fcr2"] = {
		["Name"] = "Fcr 2",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["gargoyle"] = {
		["Name"] = "Gargoyle",
		["Weight"] = 20,
		["Price"] = 230000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["hakuchou"] = {
		["Name"] = "Hakuchou",
		["Weight"] = 20,
		["Price"] = 240000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["hakuchou2"] = {
		["Name"] = "Hakuchou 2",
		["Weight"] = 20,
		["Price"] = 270000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["hexer"] = {
		["Name"] = "Hexer",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["innovation"] = {
		["Name"] = "Innovation",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["lectro"] = {
		["Name"] = "Lectro",
		["Weight"] = 20,
		["Price"] = 120000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["manchez"] = {
		["Name"] = "Manchez",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["manchez3"] = {
		["Name"] = "manchez3",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["nemesis"] = {
		["Name"] = "Nemesis",
		["Weight"] = 20,
		["Price"] = 140000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["nightblade"] = {
		["Name"] = "Nightblade",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["oppressor"] = {
		["Name"] = "Oppressor",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["oppressor2"] = {
		["Name"] = "Oppressor 2",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["pcj"] = {
		["Name"] = "Pcj",
		["Weight"] = 20,
		["Price"] = 100000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["powersurge"] = {
		["Name"] = "powersurge",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["ratbike"] = {
		["Name"] = "Ratbike",
		["Weight"] = 20,
		["Price"] = 110000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["ruffian"] = {
		["Name"] = "Ruffian",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["rrocket"] = {
		["Name"] = "Rrocket",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["sanchez"] = {
		["Name"] = "Sanchez",
		["Weight"] = 15,
		["Price"] = 140000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["sanchez2"] = {
		["Name"] = "Sanchez 2",
		["Weight"] = 15,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["sanctus"] = {
		["Name"] = "Sanctus",
		["Weight"] = 20,
		["Price"] = 190000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["shotaro"] = {
		["Name"] = "Shotaro",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["sovereign"] = {
		["Name"] = "Sovereign",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["stryder"] = {
		["Name"] = "Stryder",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["thrust"] = {
		["Name"] = "Thrust",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["vader"] = {
		["Name"] = "Vader",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["vindicator"] = {
		["Name"] = "Vindicator",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["vortex"] = {
		["Name"] = "Vortex",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["wolfsbane"] = {
		["Name"] = "Wolfsbane",
		["Weight"] = 20,
		["Price"] = 100000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["zombiea"] = {
		["Name"] = "Zombie A",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["zombieb"] = {
		["Name"] = "Zombie B",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},
	["manchez2"] = {
		["Name"] = "Manchez 2",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Motocicletas"
	},


	-- Muscle


	["blade"] = {
		["Name"] = "Blade",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["broadway"] = {
		["Name"] = "broadway",
		["Weight"] = 200,
		["Price"] = 40000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["buccaneer"] = {
		["Name"] = "Buccaneer",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["buccaneer2"] = {
		["Name"] = "Buccaneer 2",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["chino"] = {
		["Name"] = "Chino",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["chino2"] = {
		["Name"] = "Chino 2",
		["Weight"] = 45,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["clique"] = {
		["Name"] = "Clique",
		["Weight"] = 35,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["coquette3"] = {
		["Name"] = "Coquette 3",
		["Weight"] = 200,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["deviant"] = {
		["Name"] = "Deviant",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["dominator"] = {
		["Name"] = "Dominator",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["dominator2"] = {
		["Name"] = "Dominator 2",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["dominator3"] = {
		["Name"] = "Dominator 3",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["dukes"] = {
		["Name"] = "Dukes",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["faction"] = {
		["Name"] = "Faction",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["faction2"] = {
		["Name"] = "Faction 2",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["faction3"] = {
		["Name"] = "Faction 3",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["ellie"] = {
		["Name"] = "Ellie",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["gauntlet"] = {
		["Name"] = "Gauntlet",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["gauntlet2"] = {
		["Name"] = "Gauntlet 3",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["gauntlet3"] = {
		["Name"] = "Gauntlet 4",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["gauntlet4"] = {
		["Name"] = "Gauntlet 5",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["hermes"] = {
		["Name"] = "Hermes",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["hotknife"] = {
		["Name"] = "Hotknife",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["hustler"] = {
		["Name"] = "Hustler",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["impaler"] = {
		["Name"] = "Impaler",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["imperator"] = {
		["Name"] = "Imperator",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["moonbeam"] = {
		["Name"] = "Moonbeam",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["moonbeam2"] = {
		["Name"] = "Moonbeam 2",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["nightshade"] = {
		["Name"] = "Nightshade",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["peyote2"] = {
		["Name"] = "Peyote 2",
		["Weight"] = 45,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["phoenix"] = {
		["Name"] = "Phoenix",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["picador"] = {
		["Name"] = "Picador",
		["Weight"] = 60,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["ratloader"] = {
		["Name"] = "Ratloader",
		["Weight"] = 200,
		["Price"] = 1100,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["ratloader2"] = {
		["Name"] = "Ratloader 2",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["ruiner"] = {
		["Name"] = "Ruiner",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["sabregt"] = {
		["Name"] = "Sabre GT",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["sabregt2"] = {
		["Name"] = "Sabregt 2",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["slamvan"] = {
		["Name"] = "Slamvan",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["slamvan2"] = {
		["Name"] = "Slamvan 2",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["slamvan3"] = {
		["Name"] = "Slamvan 3",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["stalion"] = {
		["Name"] = "Stalion",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["stalion2"] = {
		["Name"] = "Stalion 2",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["tampa"] = {
		["Name"] = "Tampa",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["tulip"] = {
		["Name"] = "Tulip",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["vamos"] = {
		["Name"] = "Vamos",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["vigero"] = {
		["Name"] = "Vigero",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["virgo"] = {
		["Name"] = "Virgo",
		["Weight"] = 25,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["virgo2"] = {
		["Name"] = "Virgo 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["virgo3"] = {
		["Name"] = "Virgo 3",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["voodoo"] = {
		["Name"] = "Voodoo",
		["Weight"] = 45,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["voodoo2"] = {
		["Name"] = "Voodoo 2",
		["Weight"] = 25,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["yosemite"] = {
		["Name"] = "Yosemite",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["yosemite2"] = {
		["Name"] = "Yosemite 2",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["yosemite3"] = {
		["Name"] = "Yosemite 3",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["dominator7"] = {
		["Name"] = "Dominator 7",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},


	-- Off-Road


	["bfinjection"] = {
		["Name"] = "Bfinjection",
		["Weight"] = 20,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["bifta"] = {
		["Name"] = "Bifta",
		["Weight"] = 20,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["blazer"] = {
		["Name"] = "Blazer",
		["Weight"] = 10,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["blazer3"] = {
		["Name"] = "Blazer 3",
		["Weight"] = 10,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["blazer4"] = {
		["Name"] = "Blazer 4",
		["Weight"] = 10,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["bodhi2"] = {
		["Name"] = "Bodhi 2",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["brawler"] = {
		["Name"] = "Brawler",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["caracara2"] = {
		["Name"] = "Caracara 2",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["dloader"] = {
		["Name"] = "Dloader",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["dubsta3"] = {
		["Name"] = "Dubsta 3",
		["Weight"] = 55,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["everon"] = {
		["Name"] = "Everon",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["freecrawler"] = {
		["Name"] = "Freecrawler",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["hellion"] = {
		["Name"] = "Hellion",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["kalahari"] = {
		["Name"] = "Kalahari",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["kamacho"] = {
		["Name"] = "Kamacho",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Work",
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["marshall"] = {
		["Name"] = "Marshall",
		["Weight"] = 200,
		["Price"] = 10000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["mesa3"] = {
		["Name"] = "Mesa 3",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["outlaw"] = {
		["Name"] = "Outlaw",
		["Weight"] = 20,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["nightshark"] = {
		["Name"] = "Nightshark",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["rancherxl"] = {
		["Name"] = "Rancher XL",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["rancherxl2"] = {
		["Name"] = "Rancher XL2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["rebel"] = {
		["Name"] = "Rebel",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["rebel2"] = {
		["Name"] = "Rebel 2",
		["Weight"] = 45,
		["Price"] = 85000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["riata"] = {
		["Name"] = "Riata",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["sandking"] = {
		["Name"] = "Sandking",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["sandking2"] = {
		["Name"] = "Sandking 2",
		["Weight"] = 55,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["trophytruck"] = {
		["Name"] = "Trophytruck",
		["Weight"] = 20,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["vagrant"] = {
		["Name"] = "Vagrant",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["verus"] = {
		["Name"] = "Verus",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["winky"] = {
		["Name"] = "Winky",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},


	-- Planes


	["alphaz1"] = {
		["Name"] = "Alphaz 1",
		["Weight"] = 200,
		["Price"] = 1000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["cuban800"] = {
		["Name"] = "Cuban800",
		["Weight"] = 0,
		["Price"] = 520000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["dodo"] = {
		["Name"] = "Dodo",
		["Weight"] = 0,
		["Price"] = 380000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["duster"] = {
		["Name"] = "Duster",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["luxor"] = {
		["Name"] = "Luxor",
		["Weight"] = 0,
		["Price"] = 30000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["mammatus"] = {
		["Name"] = "Mammatus",
		["Weight"] = 0,
		["Price"] = 2500000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},
	["velum"] = {
		["Name"] = "Velum 2",
		["Weight"] = 200,
		["Price"] = 2000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Aviões"
	},

	-- SUVs
	["baller"] = {
		["Name"] = "Baller",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["baller2"] = {
		["Name"] = "Baller 2",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["baller3"] = {
		["Name"] = "Baller 3",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["baller4"] = {
		["Name"] = "Baller 4",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["baller5"] = {
		["Name"] = "Baller 5",
		["Weight"] = 200,
		["Price"] = 400000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["baller6"] = {
		["Name"] = "Baller 6",
		["Weight"] = 200,
		["Price"] = 410000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["bjxl"] = {
		["Name"] = "Bjxl",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["cavalcade"] = {
		["Name"] = "Cavalcade",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["cavalcade2"] = {
		["Name"] = "Cavalcade 2",
		["Weight"] = 45,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["contender"] = {
		["Name"] = "Contender",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["dubsta"] = {
		["Name"] = "Dubsta",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["dubsta2"] = {
		["Name"] = "Dubsta 2",
		["Weight"] = 55,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["fq2"] = {
		["Name"] = "Fq2",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["granger"] = {
		["Name"] = "Granger",
		["Weight"] = 65,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["gresley"] = {
		["Name"] = "Gresley",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["habanero"] = {
		["Name"] = "Habanero",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["huntley"] = {
		["Name"] = "Huntley",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["issi8"] = {
		["Name"] = "issi8",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["landstalker"] = {
		["Name"] = "Landstalker",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["landstalker2"] = {
		["Name"] = "Landstalker 2",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["mesa"] = {
		["Name"] = "Mesa",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["novak"] = {
		["Name"] = "Novak",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["patriot"] = {
		["Name"] = "Patriot",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["patriot2"] = {
		["Name"] = "Patriot 2",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["radi"] = {
		["Name"] = "Radi",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["rebla"] = {
		["Name"] = "Rebla",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["rocoto"] = {
		["Name"] = "Rocoto",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["seminole"] = {
		["Name"] = "Seminole",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["seminole2"] = {
		["Name"] = "Seminole 2",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["serrano"] = {
		["Name"] = "Serrano",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["toros"] = {
		["Name"] = "Toros",
		["Weight"] = 200,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["xls"] = {
		["Name"] = "Xls",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["xls2"] = {
		["Name"] = "Xls 2",
		["Weight"] = 200,
		["Price"] = 410000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["squaddie"] = {
		["Name"] = "Squaddie",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},

	-- Sedans
	["asea"] = {
		["Name"] = "Asea",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["asea2"] = {
		["Name"] = "Asea 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["asterope"] = {
		["Name"] = "Asterope",
		["Weight"] = 20,
		["Price"] = 30000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["cog55"] = {
		["Name"] = "Cog55",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["cog552"] = {
		["Name"] = "Cog55 2",
		["Weight"] = 200,
		["Price"] = 410000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["cognoscenti"] = {
		["Name"] = "Cognoscenti",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["cognoscenti2"] = {
		["Name"] = "Cognoscenti 2",
		["Weight"] = 200,
		["Price"] = 400000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["emperor"] = {
		["Name"] = "Emperor",
		["Weight"] = 25,
		["Price"] = 15000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["emperor2"] = {
		["Name"] = "Emperor 2",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["fugitive"] = {
		["Name"] = "Fugitive",
		["Weight"] = 60,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["glendale"] = {
		["Name"] = "Glendale",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["glendale2"] = {
		["Name"] = "Glendale 2",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["ingot"] = {
		["Name"] = "Ingot",
		["Weight"] = 200,
		["Price"] = 40000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["intruder"] = {
		["Name"] = "Intruder",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["premier"] = {
		["Name"] = "Premier",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["primo"] = {
		["Name"] = "Primo",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["primo2"] = {
		["Name"] = "Primo 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["regina"] = {
		["Name"] = "Regina",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["romero"] = {
		["Name"] = "Romero",
		["Weight"] = 25,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["stafford"] = {
		["Name"] = "Stafford",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["stanier"] = {
		["Name"] = "Stanier",
		["Weight"] = 25,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["stratum"] = {
		["Name"] = "Stratum",
		["Weight"] = 200,
		["Price"] = 40000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["stretch"] = {
		["Name"] = "Stretch",
		["Weight"] = 200,
		["Price"] = 550000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["superd"] = {
		["Name"] = "Superd",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["surge"] = {
		["Name"] = "Surge",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["tailgater"] = {
		["Name"] = "Tailgater",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["warrener"] = {
		["Name"] = "Warrener",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["washington"] = {
		["Name"] = "Washington",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},
	["tailgater2"] = {
		["Name"] = "Tailgater 2",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Sedans"
	},

	-- Service
	["airbus"] = {
		["Name"] = "Airbus",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},
	["bus"] = {
		["Name"] = "Bus",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},
	["trash"] = {
		["Name"] = "Lixeiro",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},
	["coach"] = {
		["Name"] = "Coach",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},
	["pbus2"] = {
		["Name"] = "Pbus 2",
		["Weight"] = 200,
		["Price"] = 10000000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},
	["taxi"] = {
		["Name"] = "Taxi",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Serviços"
	},

	-- Sports
	["alpha"] = {
		["Name"] = "Alpha",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["banshee"] = {
		["Name"] = "Banshee",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["bestiagts"] = {
		["Name"] = "Bestia GTS",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["blista2"] = {
		["Name"] = "Blista 2",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["blista3"] = {
		["Name"] = "Blista 3",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["buffalo"] = {
		["Name"] = "Buffalo",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["buffalo2"] = {
		["Name"] = "Buffalo 2",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["buffalo3"] = {
		["Name"] = "Buffalo 3",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["carbonizzare"] = {
		["Name"] = "Carbonizzare",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["comet2"] = {
		["Name"] = "Comet 2",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["comet3"] = {
		["Name"] = "Comet 3",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["comet4"] = {
		["Name"] = "Comet 4",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["comet5"] = {
		["Name"] = "Comet 5",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["coquette"] = {
		["Name"] = "Coquette",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["coquette4"] = {
		["Name"] = "Coquette 4",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["drafter"] = {
		["Name"] = "Drafter",
		["Weight"] = 200,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["deveste"] = {
		["Name"] = "Deveste",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["elegy"] = {
		["Name"] = "Elegy",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["elegy2"] = {
		["Name"] = "Elegy 2",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["feltzer2"] = {
		["Name"] = "Feltzer 2",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["flashgt"] = {
		["Name"] = "Flash GT",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["furoregt"] = {
		["Name"] = "Furore GT",
		["Weight"] = 35,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["fusilade"] = {
		["Name"] = "Fusilade",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["futo"] = {
		["Name"] = "Futo",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["gb200"] = {
		["Name"] = "Gb200",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["hotring"] = {
		["Name"] = "Hotring",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["komoda"] = {
		["Name"] = "Komoda",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["imorgon"] = {
		["Name"] = "Imorgon",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["issi7"] = {
		["Name"] = "Issi 7",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["italigto"] = {
		["Name"] = "Itali GTO",
		["Weight"] = 200,
		["Price"] = 220000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jugular"] = {
		["Name"] = "Jugular",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jester"] = {
		["Name"] = "Jester",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jester2"] = {
		["Name"] = "Jester 2",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jester3"] = {
		["Name"] = "Jester 3",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["khamelion"] = {
		["Name"] = "Khamelion",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["kuruma"] = {
		["Name"] = "Kuruma",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["locust"] = {
		["Name"] = "Locust",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["lynx"] = {
		["Name"] = "Lynx",
		["Weight"] = 35,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["massacro"] = {
		["Name"] = "Massacro",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["massacro2"] = {
		["Name"] = "Massacro 2",
		["Weight"] = 200,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["neo"] = {
		["Name"] = "Neo",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["neon"] = {
		["Name"] = "Neon",
		["Weight"] = 200,
		["Price"] = 230000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ninef"] = {
		["Name"] = "Ninef",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ninef2"] = {
		["Name"] = "Ninef 2",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["omnis"] = {
		["Name"] = "Omnis",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["paragon"] = {
		["Name"] = "Paragon",
		["Weight"] = 200,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["pariah"] = {
		["Name"] = "Pariah",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["panthere"] = {
		["Name"] = "panthere",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["penumbra"] = {
		["Name"] = "Penumbra",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["penumbra2"] = {
		["Name"] = "Penumbra 2",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["r300"] = {
		["Name"] = "r300",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["raiden"] = {
		["Name"] = "Raiden",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["rapidgt"] = {
		["Name"] = "Rapid GT",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["rapidgt2"] = {
		["Name"] = "Rapidgt GT2",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["raptor"] = {
		["Name"] = "Raptor",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["revolter"] = {
		["Name"] = "Revolter",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ruston"] = {
		["Name"] = "Ruston",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schafter2"] = {
		["Name"] = "Schafter 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schafter3"] = {
		["Name"] = "Schafter 3",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schafter4"] = {
		["Name"] = "Schafter 4",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schafter5"] = {
		["Name"] = "Schafter 5",
		["Weight"] = 200,
		["Price"] = 400000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schafter6"] = {
		["Name"] = "Schafter 6",
		["Weight"] = 200,
		["Price"] = 320000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schlagen"] = {
		["Name"] = "Schlagen",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["schwarzer"] = {
		["Name"] = "Schwarzer",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sentinel3"] = {
		["Name"] = "Sentinel 3",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["seven70"] = {
		["Name"] = "Seven 70",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["specter"] = {
		["Name"] = "Specter",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["specter2"] = {
		["Name"] = "Specter 2",
		["Weight"] = 20,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["streiter"] = {
		["Name"] = "Streiter",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sugoi"] = {
		["Name"] = "Sugoi",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sultan"] = {
		["Name"] = "Sultan",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sultan2"] = {
		["Name"] = "Sultan 2",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["surano"] = {
		["Name"] = "Surano",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tampa2"] = {
		["Name"] = "Tampa 2",
		["Weight"] = 35,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tropos"] = {
		["Name"] = "Tropos",
		["Weight"] = 35,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["verlierer2"] = {
		["Name"] = "Verlierer 2",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["vstr"] = {
		["Name"] = "Vstr",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["zr380"] = {
		["Name"] = "Zr380",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["zr3802"] = {
		["Name"] = "Zr380 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["zr3803"] = {
		["Name"] = "Zr380 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["italirsx"] = {
		["Name"] = "Itali RSX",
		["Weight"] = 20,
		["Price"] = 280000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["veto"] = {
		["Name"] = "Veto",
		["Weight"] = 0,
		["Price"] = 20000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["veto2"] = {
		["Name"] = "Veto 2",
		["Weight"] = 0,
		["Price"] = 20000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["zr350"] = {
		["Name"] = "ZR 350",
		["Weight"] = 20,
		["Price"] = 160000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["calico"] = {
		["Name"] = "Calico",
		["Weight"] = 20,
		["Price"] = 240000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["futo2"] = {
		["Name"] = "Futo 2",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["euros"] = {
		["Name"] = "Euros",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jester4"] = {
		["Name"] = "Jester 4",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["remus"] = {
		["Name"] = "Remus",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["comet6"] = {
		["Name"] = "Comet 6",
		["Weight"] = 200,
		["Price"] = 190000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["growler"] = {
		["Name"] = "Growler",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["vectre"] = {
		["Name"] = "Vectre",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["cypher"] = {
		["Name"] = "Cypher",
		["Weight"] = 20,
		["Price"] = 260000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sultan3"] = {
		["Name"] = "Sultan 3",
		["Weight"] = 200,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["rt3000"] = {
		["Name"] = "RT 3000",
		["Weight"] = 20,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ardent"] = {
		["Name"] = "Ardent",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["btype"] = {
		["Name"] = "Btype",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["btype2"] = {
		["Name"] = "Btype 2",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["btype3"] = {
		["Name"] = "Btype 3",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["casco"] = {
		["Name"] = "Casco",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["cheetah2"] = {
		["Name"] = "Cheetah 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["coquette2"] = {
		["Name"] = "Coquette 2",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["deluxo"] = {
		["Name"] = "Deluxo",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["dynasty"] = {
		["Name"] = "Dynasty",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["fagaloa"] = {
		["Name"] = "Fagaloa",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["feltzer3"] = {
		["Name"] = "Feltzer 3",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["gt500"] = {
		["Name"] = "GT 500",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["infernus2"] = {
		["Name"] = "Infernus 2",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jb700"] = {
		["Name"] = "JB 700",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["jb7002"] = {
		["Name"] = "JB 7002",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["mamba"] = {
		["Name"] = "Mamba",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["manana"] = {
		["Name"] = "Manana",
		["Weight"] = 35,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["manana2"] = {
		["Name"] = "Manana 2",
		["Weight"] = 35,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["michelli"] = {
		["Name"] = "Michelli",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["monroe"] = {
		["Name"] = "Monroe",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["nebula"] = {
		["Name"] = "Nebula",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["peyote"] = {
		["Name"] = "Peyote",
		["Weight"] = 35,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["peyote3"] = {
		["Name"] = "Peyote 3",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["pigalle"] = {
		["Name"] = "Pigalle",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["rapidgt3"] = {
		["Name"] = "Rapid GT3",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["retinue"] = {
		["Name"] = "Retinue",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["retinue2"] = {
		["Name"] = "Retinue 2",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["savestra"] = {
		["Name"] = "Savestra",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["stinger"] = {
		["Name"] = "Stinger",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["stingergt"] = {
		["Name"] = "Stinger GT",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["stromberg"] = {
		["Name"] = "Stromberg",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["swinger"] = {
		["Name"] = "Swinger",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["torero"] = {
		["Name"] = "Torero",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado"] = {
		["Name"] = "Tornado",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado2"] = {
		["Name"] = "Tornado 2",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado3"] = {
		["Name"] = "Tornado 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado4"] = {
		["Name"] = "Tornado 4",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado5"] = {
		["Name"] = "Tornado 5",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tornado6"] = {
		["Name"] = "Tornado 6",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["turismo2"] = {
		["Name"] = "Turismo 2",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["viseris"] = {
		["Name"] = "Viseris",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["z190"] = {
		["Name"] = "Z190",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ztype"] = {
		["Name"] = "Ztype",
		["Weight"] = 200,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["zion3"] = {
		["Name"] = "Zion 3",
		["Weight"] = 200,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["cheburek"] = {
		["Name"] = "Cheburek",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["toreador"] = {
		["Name"] = "Toreador",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},

	-- Super
	["adder"] = {
		["Name"] = "Adder",
		["Weight"] = 20,
		["Price"] = 190000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["autarch"] = {
		["Name"] = "Autarch",
		["Weight"] = 20,
		["Price"] = 240000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["banshee2"] = {
		["Name"] = "Banshee 2",
		["Weight"] = 20,
		["Price"] = 190000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["bullet"] = {
		["Name"] = "Bullet",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["cheetah"] = {
		["Name"] = "Cheetah",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["cyclone"] = {
		["Name"] = "Cyclone",
		["Weight"] = 20,
		["Price"] = 300000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["entity2"] = {
		["Name"] = "Entity 2",
		["Weight"] = 200,
		["Price"] = 220000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["entity3"] = {
		["Name"] = "entity3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["entityxf"] = {
		["Name"] = "Entity XF",
		["Weight"] = 20,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["emerus"] = {
		["Name"] = "Emerus",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["fmj"] = {
		["Name"] = "Fmj",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["furia"] = {
		["Name"] = "Furia",
		["Weight"] = 20,
		["Price"] = 300000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["gp1"] = {
		["Name"] = "Gp1",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["infernus"] = {
		["Name"] = "Infernus",
		["Weight"] = 20,
		["Price"] = 130000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["italigtb"] = {
		["Name"] = "Italigtb",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["italigtb2"] = {
		["Name"] = "Italigtb 2",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["krieger"] = {
		["Name"] = "Krieger",
		["Weight"] = 20,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["le7b"] = {
		["Name"] = "Le7b",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["nero"] = {
		["Name"] = "Nero",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["nero2"] = {
		["Name"] = "Nero 2",
		["Weight"] = 20,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["osiris"] = {
		["Name"] = "Osiris",
		["Weight"] = 20,
		["Price"] = 230000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["penetrator"] = {
		["Name"] = "Penetrator",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["pfister811"] = {
		["Name"] = "Pfister 811",
		["Weight"] = 20,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["prototipo"] = {
		["Name"] = "Prototipo",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["reaper"] = {
		["Name"] = "Reaper",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["s80"] = {
		["Name"] = "S80",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["sc1"] = {
		["Name"] = "Sc1",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["scramjet"] = {
		["Name"] = "Scramjet",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["sheava"] = {
		["Name"] = "Sheava",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["sultanrs"] = {
		["Name"] = "Sultan RS",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["t20"] = {
		["Name"] = "T20",
		["Weight"] = 20,
		["Price"] = 300000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["taipan"] = {
		["Name"] = "Taipan",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["tempesta"] = {
		["Name"] = "Tempesta",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["tezeract"] = {
		["Name"] = "Tezeract",
		["Weight"] = 20,
		["Price"] = 300000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["thrax"] = {
		["Name"] = "Thrax",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["tigon"] = {
		["Name"] = "Tigon",
		["Weight"] = 200,
		["Price"] = 220000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["turismor"] = {
		["Name"] = "Turismo R",
		["Weight"] = 20,
		["Price"] = 190000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["tyrant"] = {
		["Name"] = "Tyrant",
		["Weight"] = 20,
		["Price"] = 210000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["tyrus"] = {
		["Name"] = "Tyrus",
		["Weight"] = 20,
		["Price"] = 220000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["vacca"] = {
		["Name"] = "Vacca",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["vagner"] = {
		["Name"] = "Vagner",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["vigilante"] = {
		["Name"] = "Vigilante",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["virtue"] = {
		["Name"] = "virtue",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["visione"] = {
		["Name"] = "Visione",
		["Weight"] = 20,
		["Price"] = 230000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["voltic"] = {
		["Name"] = "Voltic",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["voltic2"] = {
		["Name"] = "Voltic 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["xa21"] = {
		["Name"] = "Xa21",
		["Weight"] = 20,
		["Price"] = 260000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["zentorno"] = {
		["Name"] = "Zentorno",
		["Weight"] = 20,
		["Price"] = 230000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["zorrusso"] = {
		["Name"] = "Zorrusso",
		["Weight"] = 20,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},

	-- Trailer
	["armytanker"] = {
		["Name"] = "Armytanker",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["armytrailer"] = {
		["Name"] = "Armytrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["armytrailer2"] = {
		["Name"] = "Armytrailer 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["baletrailer"] = {
		["Name"] = "Baletrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["boattrailer"] = {
		["Name"] = "Boattrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["cablecar"] = {
		["Name"] = "Cablecar",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["docktrailer"] = {
		["Name"] = "Docktrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["freighttrailer"] = {
		["Name"] = "Freighttrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["graintrailer"] = {
		["Name"] = "Graintrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["proptrailer"] = {
		["Name"] = "Proptrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["raketrailer"] = {
		["Name"] = "Raketrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tr2"] = {
		["Name"] = "Tr2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tr3"] = {
		["Name"] = "Tr3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tr4"] = {
		["Name"] = "Tr4",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trflat"] = {
		["Name"] = "Trflat",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tvtrailer"] = {
		["Name"] = "Tvtrailer",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tanker"] = {
		["Name"] = "Tanker",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["tanker2"] = {
		["Name"] = "Tanker 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailerlarge"] = {
		["Name"] = "Trailerlarge",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailerlogs"] = {
		["Name"] = "Trailerlogs",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailers"] = {
		["Name"] = "Trailers",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailers2"] = {
		["Name"] = "Trailers 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailers3"] = {
		["Name"] = "Trailers 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},
	["trailers4"] = {
		["Name"] = "Trailers 4",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trailers"
	},

	-- Trains
	["freight"] = {
		["Name"] = "Freight",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["freightcar"] = {
		["Name"] = "Freightcar",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["freightcont1"] = {
		["Name"] = "Freightcont 1",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["freightcont2"] = {
		["Name"] = "Freightcont 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["freightgrain"] = {
		["Name"] = "Freightgrain",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["metrotrain"] = {
		["Name"] = "Metrotrain",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},
	["tankercar"] = {
		["Name"] = "Rankercar",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Trens"
	},

	-- Utility
	["airtug"] = {
		["Name"] = "Airtug",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["caddy"] = {
		["Name"] = "Caddy",
		["Weight"] = 10,
		["Price"] = 30000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["caddy2"] = {
		["Name"] = "Caddy 2",
		["Weight"] = 10,
		["Price"] = 25000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["caddy3"] = {
		["Name"] = "Caddy 3",
		["Weight"] = 10,
		["Price"] = 20000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["docktug"] = {
		["Name"] = "Docktug",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["forklift"] = {
		["Name"] = "Forklift",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["mower"] = {
		["Name"] = "Mower",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["ripley"] = {
		["Name"] = "Ripley",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["sadler"] = {
		["Name"] = "Sadler",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["sadler2"] = {
		["Name"] = "Sadler 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["scrap"] = {
		["Name"] = "Scrap",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["towtruck"] = {
		["Name"] = "Towtruck",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["towtruck2"] = {
		["Name"] = "Towtruck 2",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["tractor"] = {
		["Name"] = "Tractor",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["tractor2"] = {
		["Name"] = "Tractor 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["tractor3"] = {
		["Name"] = "Tractor 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["utillitruck"] = {
		["Name"] = "Utillitruck",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["utillitruck2"] = {
		["Name"] = "Utillitruck 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["utillitruck3"] = {
		["Name"] = "Utillitruck 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},
	["slamtruck"] = {
		["Name"] = "Slamtruck",
		["Weight"] = 20,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Utilitários"
	},

	-- Vans
	["bison"] = {
		["Name"] = "Bison",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["bison2"] = {
		["Name"] = "Bison 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["bison3"] = {
		["Name"] = "Bison 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["bobcatxl"] = {
		["Name"] = "Bobcat XL",
		["Weight"] = 45,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["boxville"] = {
		["Name"] = "Boxville",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["boxville2"] = {
		["Name"] = "Boxville 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["boxville3"] = {
		["Name"] = "Boxville 3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["boxville4"] = {
		["Name"] = "Boxville",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["boxville5"] = {
		["Name"] = "Boxville 5",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["burrito"] = {
		["Name"] = "Burrito",
		["Weight"] = 35,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["burrito2"] = {
		["Name"] = "Burrito 2",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["burrito3"] = {
		["Name"] = "Burrito 3",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["burrito4"] = {
		["Name"] = "Burrito 4",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["burrito5"] = {
		["Name"] = "Burrito 5",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["camper"] = {
		["Name"] = "Camper",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["gburrito"] = {
		["Name"] = "Gburrito",
		["Weight"] = 200,
		["Price"] = 100000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["gburrito2"] = {
		["Name"] = "Gburrito 2",
		["Weight"] = 10,
		["Price"] = 1000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["journey"] = {
		["Name"] = "Journey",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["journey2"] = {
		["Name"] = "journey2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["minivan"] = {
		["Name"] = "Minivan",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["minivan2"] = {
		["Name"] = "Minivan 2",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["paradise"] = {
		["Name"] = "Paradise",
		["Weight"] = 200,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["pony"] = {
		["Name"] = "Pony",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["pony2"] = {
		["Name"] = "Pony 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["rumpo"] = {
		["Name"] = "Rumpo",
		["Weight"] = 200,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["rumpo2"] = {
		["Name"] = "Rumpo 2",
		["Weight"] = 200,
		["Price"] = 80000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["rumpo3"] = {
		["Name"] = "Rumpo 3",
		["Weight"] = 200,
		["Price"] = 300000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["speedo"] = {
		["Name"] = "Speedo",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["speedo2"] = {
		["Name"] = "Speedo 2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["speedo4"] = {
		["Name"] = "Speedo 4",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["surfer"] = {
		["Name"] = "Surfer",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["surfer2"] = {
		["Name"] = "Surfer 2",
		["Weight"] = 200,
		["Price"] = 40000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["surfer3"] = {
		["Name"] = "surfer3",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["youga"] = {
		["Name"] = "Youga",
		["Weight"] = 70,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["youga2"] = {
		["Name"] = "Youga 2",
		["Weight"] = 70,
		["Price"] = 70000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},
	["youga3"] = {
		["Name"] = "Youga 3",
		["Weight"] = 70,
		["Price"] = 90000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Vans"
	},

	-- VTRS SP

	["as350prf"] = {
		["Name"] = "Heli PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["dusterembu"] = {
		["Name"] = "Duster EMBU",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["nc750xembu"] = {
		["Name"] = "Nc750x EMBU",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["s10embu"] = {
		["Name"] = "s10 EMBU",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["palio17pm"] = {
		["Name"] = "Palio POLICIA",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["as350pc"] = {
		["Name"] = "Heli PC",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	
	
	["cruze21prf"] = {
		["Name"] = "Cruze PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["l200prf"] = {
		["Name"] = "L200 PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["prfcamaro19"] = {
		["Name"] = "Camaro PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21federalg2"] = {
		["Name"] = "Trail PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["WRr1200prf"] = {
		["Name"] = "R1200 PRF",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["lander"] = {
		["Name"] = "Lander",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["sw42020baep3"] = {
		["Name"] = "Sw4",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail23engesig"] = {
		["Name"] = "Trail 23 Baep",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["l200coe"] = {
		["Name"] = "l200 Coe",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail20bpchq"] = {
		["Name"] = "trail 20 Choque",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["dustercivil"] = {
		["Name"] = "Duster Civi",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["f800pm"] = {
		["Name"] = "F800 baep",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["s10hccivil"] = {
		["Name"] = "S10 desc",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["s10garrasp"] = {
		["Name"] = "S10 Garra",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail20pcesp1"] = {
		["Name"] = "Trail 2020",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21dope2"] = {
		["Name"] = "Trail 2021 Dope",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21ger1_hi"] = {
		["Name"] = "Trail 2021 Ger",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["vtrail21"] = {
		["Name"] = "Trail Desc",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21pm"] = {
		["Name"] = "Trail FT",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail2020ft1"] = {
		["Name"] = "Trail 2020 FT",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["amarokgcm"] = {
		["Name"] = "Amarok GCM",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["duster21gcm1"] = {
		["Name"] = "Duster GCM",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail19iope1"] = {
		["Name"] = "Trail GCM",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["xregcm"] = {
		["Name"] = "Xre GCM",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["aguia"] = {
		["Name"] = "Aguia PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["corollacross"] = {
		["Name"] = "Corolla Cross PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["dusterpm24"] = {
		["Name"] = "Duster PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["onibuspolicia"] = {
		["Name"] = "Onibus PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["spin22pm"] = {
		["Name"] = "Spin PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail23pmsp"] = {
		["Name"] = "Trail PMSP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["dusterpmesp"] = {
		["Name"] = "Duster TOR",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21TOR"] = {
		["Name"] = "Trail 2021 TOR",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail23rod"] = {
		["Name"] = "Trail 2023 TOR",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	
	
	["trail20pm"] = {
		["Name"] = "Trail 20",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	
	
	["sw4pm"] = {
		["Name"] = "Sw4 pm",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail17pm"] = {
		["Name"] = "Trail 17pm",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["xt2017pm"] = {
		["Name"] = "ROCAM XT",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21pc"] = {
		["Name"] = "Trail 21 PC",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trailcivileie"] = {
		["Name"] = "Trail civil",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["traildope3"] = {
		["Name"] = "trail dope",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["s10iml"] = {
		["Name"] = "S10 IML",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["s10sap"] = {
		["Name"] = "S10 SAP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["basepm"] = {
		["Name"] = "BASE MOVEL",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["as350"] = {
		["Name"] = "Aguia SP",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["spinaegis"] = {
		["Name"] = "SPIN 01",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["spinlegion"] = {
		["Name"] = "SPIN 02",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trail21pm"] = {
		["Name"] = "trail 21pm",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["trailpm1"] = {
		["Name"] = "trail pm1",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["sw4tor"] = {
		["Name"] = "sw4 tor",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["corollarod"] = {
		["Name"] = "corollarod",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	

	["dusterrp1"] = {
		["Name"] = "dusterrp1",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},	
	

	-- Public Service
	
	["polas350"] = {
		["Name"] = "Polaris 350",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["ambulance2"] = {
		["Name"] = "Ambulância",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["ballerpol"] = {
		["Name"] = "Baller",
		["Weight"] = 200,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["elegy2pol"] = {
		["Name"] = "Elegy 2",
		["Weight"] = 200,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["fugitivepol"] = {
		["Name"] = "Fugitive",
		["Weight"] = 60,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["komodapol"] = {
		["Name"] = "Komoda",
		["Weight"] = 200,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["kurumapol"] = {
		["Name"] = "Kuruma",
		["Weight"] = 200,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["maverick2"] = {
		["Name"] = "Maverick 2",
		["Weight"] = 0,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["nc700pol"] = {
		["Name"] = "Honda NC700",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["oracle2pol"] = {
		["Name"] = "Oracle 2",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["polchall"] = {
		["Name"] = "Dodge Challenger",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["polchar"] = {
		["Name"] = "Dodge Charger",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["explorerpol"] = {
		["Name"] = "Ford Explorer",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["guardianpol"] = {
		["Name"] = "Guardian",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["tauruspol"] = {
		["Name"] = "Ford Taurus",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["tahoepol"] = {
		["Name"] = "Chevrolet Tahoe",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["silveradopol"] = {
		["Name"] = "Chevrolet Silverado",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["police3pol"] = {
		["Name"] = "Policia 3",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["policepol"] = {
		["Name"] = "Policia",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["policetpol"] = {
		["Name"] = "Policia T",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	
	["polvic"] = {
		["Name"] = "Crown Victoria",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["r1250pol"] = {
		["Name"] = "BMW R1250",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["schafter2pol"] = {
		["Name"] = "Schafter 2",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["sheriff2pol"] = {
		["Name"] = "Sheriff 2",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["sultanrspol"] = {
		["Name"] = "Sultan RS",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["tailgater2pol"] = {
		["Name"] = "Tailgater 2",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["jester5"] = {
		["Name"] = "Magnus",
		["Weight"] = 60,
		["Price"] = 750000,
		["Mode"] = "Cars",
		["Gemstone"] = 60,
		["Class"] = "Clássicos"
	},
	["roxanne"] = {
		["Name"] = "Roxanne",
		["Weight"] = 60,
		["Price"] = 750000,
		["Mode"] = "Cars",
		["Gemstone"] = 60,
		["Class"] = "Clássicos"
	},
	["sunrise"] = {
		["Name"] = "Sunrise",
		["Weight"] = 60,
		["Price"] = 750000,
		["Mode"] = "Cars",
		["Gemstone"] = 60,
		["Class"] = "Clássicos"
	},
	["wheelchair"] = {
		["Name"] = "Cadeira de Rodas",
		["Weight"] = 0,
		["Price"] = 500,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["bimx"] = {
		["Name"] = "BMX",
		["Weight"] = 0,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["unicycle"] = {
		["Name"] = "Monociclo",
		["Weight"] = 0,
		["Price"] = 10000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["brickade2"] = {
		["Name"] = "brickade2",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["boor"] = {
		["Name"] = "boor",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["comet7"] = {
		["Name"] = "Comet 7",
		["Weight"] = 20,
		["Price"] = 300000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["patriot3"] = {
		["Name"] = "Patriot 3",
		["Weight"] = 200,
		["Price"] = 320000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["omnisegt"] = {
		["Name"] = "Omni SE GT",
		["Weight"] = 200,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["tenf2"] = {
		["Name"] = "Tenf 2",
		["Weight"] = 200,
		["Price"] = 190000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["sm722"] = {
		["Name"] = "Mm722",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["brioso3"] = {
		["Name"] = "Brioso 3",
		["Weight"] = 200,
		["Price"] = 50000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["lm87"] = {
		["Name"] = "Lm87",
		["Weight"] = 200,
		["Price"] = 170000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["iwagen"] = {
		["Name"] = "Iwagen",
		["Weight"] = 200,
		["Price"] = 260000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["jubilee"] = {
		["Name"] = "Jubilee",
		["Weight"] = 200,
		["Price"] = 150000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["reever"] = {
		["Name"] = "Reever",
		["Weight"] = 20,
		["Price"] = 170000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["shinobi"] = {
		["Name"] = "Shinobi",
		["Weight"] = 20,
		["Price"] = 180000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["granger2"] = {
		["Name"] = "Granger 2",
		["Weight"] = 65,
		["Price"] = 200000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["buffalo4"] = {
		["Name"] = "Buffalo 4",
		["Weight"] = 200,
		["Price"] = 250000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["vigero2"] = {
		["Name"] = "Vigero 2",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["sentinel4"] = {
		["Name"] = "Sentinel 4",
		["Weight"] = 200,
		["Price"] = 140000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["ignus"] = {
		["Name"] = "Ignus",
		["Weight"] = 20,
		["Price"] = 250000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["youga4"] = {
		["Name"] = "Youga 4",
		["Weight"] = 70,
		["Price"] = 90000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["zeno"] = {
		["Name"] = "Zeno",
		["Weight"] = 20,
		["Price"] = 250000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["deity"] = {
		["Name"] = "Deity",
		["Weight"] = 200,
		["Price"] = 300000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["kanjosj"] = {
		["Name"] = "Kanjo SJ",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Compactos"
	},
	["greenwood"] = {
		["Name"] = "Greenwood",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["corsita"] = {
		["Name"] = "Corsita",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},
	["cinquemila"] = {
		["Name"] = "Cinquemila",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["rhinehart"] = {
		["Name"] = "Rhinehart",
		["Weight"] = 200,
		["Price"] = 120000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "SUVs"
	},
	["tenf"] = {
		["Name"] = "Tenf",
		["Weight"] = 200,
		["Price"] = 180000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["postlude"] = {
		["Name"] = "Postlude",
		["Weight"] = 200,
		["Price"] = 60000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Esportivos"
	},
	["mule5"] = {
		["Name"] = "Mule 5",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["baller7"] = {
		["Name"] = "Baller 7",
		["Weight"] = 200,
		["Price"] = 480000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["conada"] = {
		["Name"] = "Conada",
		["Weight"] = 200,
		["Price"] = 100,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["champion"] = {
		["Name"] = "Champion",
		["Weight"] = 20,
		["Price"] = 220000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["draugur"] = {
		["Name"] = "Draugur",
		["Weight"] = 200,
		["Price"] = 320000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Off-Roads"
	},
	["astron"] = {
		["Name"] = "Astron",
		["Weight"] = 200,
		["Price"] = 220000,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Embarcações"
	},
	["ruiner4"] = {
		["Name"] = "Ruiner4",
		["Weight"] = 200,
		["Price"] = 110000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Muscles"
	},
	["torero2"] = {
		["Name"] = "Torero 2",
		["Weight"] = 200,
		["Price"] = 200000,
		["Mode"] = "Cars",
		["Gemstone"] = 0,
		["Class"] = "Clássicos"
	},


	-- Cycles


	["bmx"] = {
		["Name"] = "Bmx",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["cruiser"] = {
		["Name"] = "Cruiser",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["fixter"] = {
		["Name"] = "Fixter",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["scorcher"] = {
		["Name"] = "Scorcher",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["tribike"] = {
		["Name"] = "Tribike",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["tribike2"] = {
		["Name"] = "Tribike 2",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},
	["tribike3"] = {
		["Name"] = "Tribike 3",
		["Weight"] = 0,
		["Price"] = 1000,
		["Mode"] = "Bikes",
		["Gemstone"] = 0,
		["Class"] = "Bicicletas"
	},

	--==================================--
	--[[    Polcia   ]] --
	--==================================--


	["TXgtr"] = {
		["Name"] = "Nissan Gtr",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXbmwhz"] = {
		["Name"] = "Bmw M5",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["JLspeedoems"] = {
		["Name"] = "Ambulância",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["JLvolito"] = {
		["Name"] = "Volito",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["JLlancerx"] = {
		["Name"] = "Lancer",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["JLC7"] = {
		["Name"] = "C7",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXtiger900"] = {
		["Name"] = "Tiger 900",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXr1200"] = {
		["Name"] = "R1200",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXsubaru"] = {
		["Name"] = "Subaru",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXyukon"] = {
		["Name"] = "GMC Yukon",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["JLpolmav"] = {
		["Name"] = "Polmav",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXsxr"] = {
		["Name"] = "Honda Sxr",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXx6"] = {
		["Name"] = "Bmw X6",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["WRram2500"] = {
		["Name"] = "Ram 2500",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXclassxx"] = {
		["Name"] = "Mercedes Classe X",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXBmwm8"] = {
		["Name"] = "Bmw M8",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXbmwm4"] = {
		["Name"] = "Bmw M4",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXBmwm1"] = {
		["Name"] = "Bmw M1",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["TXbmwi8"] = {
		["Name"] = "Bmw I8",
		["Weight"] = 20,
		["Price"] = 1000,
		["Mode"] = "Work",
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},


	-- Imported

	
	["boxster"] = {
		["Name"] = "Porsche Boxster",
		["Weight"] = 200,
		["Price"] = 175000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["auditt"] = {
		["Name"] = "Audi TT",
		["Weight"] = 60,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["subarubrz"] = {
		["Name"] = "Subaru brz",
		["Weight"] = 45,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["skyr34"] = {
		["Name"] = "GTR R34 BRAIA",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["bmwi8"] = {
		["Name"] = "Bmw I8",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["camarozl1"] = {
		["Name"] = "Chevrolet Camaro ZL1",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["sian"] = {
		["Name"] = "Lamborghini Sian",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["lamborghinigallardo"] = {
		["Name"] = "Lamborghini Gallardo",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["sennagtr"] = {
		["Name"] = "McLaren Senna GTR",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mclarensenna"] = {
		["Name"] = "McLaren Senna",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["p1gtr"] = {
		["Name"] = "McLaren P1 GTR",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 300,
		["Class"] = "Importados"
	},
	["p1"] = {
		["Name"] = "McLaren P1",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 300,
		["Class"] = "Importados"
	},
	["vwgolfmk7"] = {
		["Name"] = "Volkswagen Golf MK7",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["bmwm5e34"] = {
		["Name"] = "Bmw M5 E34",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["lp670"] = {
		["Name"] = "Lamborghini LP 670",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lexuslfa"] = {
		["Name"] = "Lexus LFA",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["gtr50"] = {
		["Name"] = "Nissan GTR 50",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["ferrarif40"] = {
		["Name"] = "Ferrari F40",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["essenza"] = {
		["Name"] = "Lamborghini Essenza",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["escortrs"] = {
		["Name"] = "Ford Escort RS",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["escort"] = {
		["Name"] = "Ford Escort",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["abarth695"] = {
		["Name"] = "Fiat Abarth 695",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["bmwboltz"] = {
		["Name"] = "Bmw M5 F90",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["720s"] = {
		["Name"] = "McLaren 720s",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["vwjetta"] = {
		["Name"] = "Volkswagen Jetta",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["porschecarreras"] = {
		["Name"] = "Porsche Carrera S",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["mercedescla45s"] = {
		["Name"] = "Mercedes A45s",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mercedescla45"] = {
		["Name"] = "Mercedes A45",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mbati"] = {
		["Name"] = "Mini Bati",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["msanchez"] = {
		["Name"] = "Mini Sanchez",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["chillybin"] = {
		["Name"] = "Chillybin",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 20,
		["Class"] = "Importados"
	},
	["skart"] = {
		["Name"] = "Skart",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["panamera"] = {
		["Name"] = "Porsche Panamera",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["vwfox"] = {
		["Name"] = "Fox",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["gt17"] = {
		["Name"] = "Ford GT17",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["urus"] = {
		["Name"] = "Lamborghini Urus",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["s600"] = {
		["Name"] = "Mercedes S600",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mercedess63"] = {
		["Name"] = "Mercedes S63",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["eg6"] = {
		["Name"] = "Honda Civic EG6",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["180sx"] = {
		["Name"] = "Nissan 180SX",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["veneno"] = {
		["Name"] = "Lamborghini Veneno",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["fxxkevo"] = {
		["Name"] = "Ferrari Evo",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["19ftype"] = {
		["Name"] = "Jaguar F-Type",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["911r"] = {
		["Name"] = "Porsche 911r",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["m2"] = {
		["Name"] = "Bmw M2",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["675lt"] = {
		["Name"] = "McLaren 675",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["agerars"] = {
		["Name"] = "Koenigsegg Agera RS",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["laferrari"] = {
		["Name"] = "LA Ferrari",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["cb500x"] = {
		["Name"] = "CB 500X",
		["Weight"] = 20,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["r1200gs"] = {
		["Name"] = "BMW R1200 GS",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["regera"] = {
		["Name"] = "Koenigsegg Regera",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["nissantitan17"] = {
		["Name"] = "Nissan Titan17",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["bbentayga"] = {
		["Name"] = "Bentley Bentayga",
		["Weight"] = 60,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["70camarofn"] = {
		["Name"] = "Chevrolet Camaro 70",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["bme6tun"] = {
		["Name"] = "Bmw E6",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["africat"] = {
		["Name"] = "Honda Africa Twin",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["hondacbr650r"] = {
		["Name"] = "Honda CBR 650r",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["i8"] = {
		["Name"] = "BMW I8",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["r32"] = {
		["Name"] = "Nissan GTR R32",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["r33"] = {
		["Name"] = "Nissan GTR R33",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["nissangtr"] = {
		["Name"] = "Nissan GTR R35",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["488gtb"] = {
		["Name"] = "Ferrari 488",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 150,
		["Class"] = "Importados"
	},
	["ferrari812"] = {
		["Name"] = "Ferrari 812",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["m6e63"] = {
		["Name"] = "Bmw M6",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["71gtx"] = {
		["Name"] = "Plymouth GTX",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["porsche992"] = {
		["Name"] = "Porsche 992",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["eclipse"] = {
		["Name"] = "Mitsubishi Eclipse",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lp700r"] = {
		["Name"] = "Lamborghini LP 700r",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["db11"] = {
		["Name"] = "Aston Martin DB11",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["rr14"] = {
		["Name"] = "Range Rover Vogue",
		["Weight"] = 60,
		["Price"] = 175000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["570S"] = {
		["Name"] = "McLaren 570S",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["rrghost"] = {
		["Name"] = "Rolls-Royce Ghost",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["918"] = {
		["Name"] = "Porsche 918",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["bmwm3gtr"] = {
		["Name"] = "BMW M3 GTR",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["audir8"] = {
		["Name"] = "Audi R8",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["audirs6"] = {
		["Name"] = "Audi RS6",
		["Weight"] = 60,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["audirs7"] = {
		["Name"] = "Audi RS7",
		["Weight"] = 60,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lp6504"] = {
		["Name"] = "Lamborghini LP 650",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["gt63"] = {
		["Name"] = "Mercedes GT63",
		["Weight"] = 60,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["viper"] = {
		["Name"] = "Dodge Viper",
		["Weight"] = 60,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["rmodbugatti"] = {
		["Name"] = "Bugatti",
		["Weight"] = 60,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["bugattichiron"] = {
		["Name"] = "Bugatti Chiron",
		["Weight"] = 60,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["monza"] = {
		["Name"] = "Chevrolet Monza",
		["Weight"] = 60,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["ferrariitalia"] = {
		["Name"] = "Ferrari Italia",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["ferrari458"] = {
		["Name"] = "Ferrari 458",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["nissanskyliner34"] = {
		["Name"] = "Nissan GTR R34",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["teslaprior"] = {
		["Name"] = "Tesla Prior",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["lamborghinihuracan"] = {
		["Name"] = "Lamborghini Huracan",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lamborghinievo"] = {
		["Name"] = "Lamborghini Evo",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lamborghinievos"] = {
		["Name"] = "Lamborghini Evo S",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mercedesa45"] = {
		["Name"] = "Mercedes A45",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["dodgechargersrt"] = {
		["Name"] = "Dodge Charger STR",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["dodgecharger"] = {
		["Name"] = "Dodge Charger",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mazdarx7"] = {
		["Name"] = "Mazda RX7",
		["Weight"] = 200,
		["Price"] = 350000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["bmwm4gts"] = {
		["Name"] = "BMW M4 GTS",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lancerevolutionx"] = {
		["Name"] = "Lancer Evolution X",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["lancerevolution9"] = {
		["Name"] = "Lancer Evolution 9",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["fordfocusrs"] = {
		["Name"] = "Ford Focus RS",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["toyotasupra"] = {
		["Name"] = "SUPRA 94",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["toyotasupragr"] = {
		["Name"] = "SUPRA GR",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["nissan370z"] = {
		["Name"] = "Nissan 370z",
		["Weight"] = 200,
		["Price"] = 450000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["nissansilvias15"] = {
		["Name"] = "Nissan Silvia S15",
		["Weight"] = 200,
		["Price"] = 450000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["hondafk8"] = {
		["Name"] = "Honda Civic Type-R",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mustangmach1"] = {
		["Name"] = "Ford Mustang",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["porsche930"] = {
		["Name"] = "Porsche 930",
		["Weight"] = 200,
		["Price"] = 210000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["fordraptor2017"] = {
		["Name"] = "Ford Raptor",
		["Weight"] = 200,
		["Price"] = 1000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["rangerovervelar"] = {
		["Name"] = "Range Rover Velar",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["bmwz4"] = {
		["Name"] = "Bmw Z4",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["vwamarok"] = {
		["Name"] = "Volkswagen Amarok",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["mercedesamggtr"] = {
		["Name"] = "Mercedes AMG GTR",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["mercedesslsamg"] = {
		["Name"] = "Mercedes SLS AMG",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["ferraricalifornia"] = {
		["Name"] = "Ferrari California",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["astonmartinvantage"] = {
		["Name"] = "Aston Martin Vantage",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["chevroletcamarozl1"] = {
		["Name"] = "Chevrolet Camaro ZL1",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["porschemacan"] = {
		["Name"] = "Porsche Macan",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["vwfusca"] = {
		["Name"] = "Volkswagen Fusca",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["harleydavidsonfx"] = {
		["Name"] = "Harley FX",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["harleydavidsonrg"] = {
		["Name"] = "Harley RG",
		["Weight"] = 200,
		["Price"] = 245000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["jeepgladiator"] = {
		["Name"] = "Jeep Gladiator",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["jeepcherokee"] = {
		["Name"] = "Jeep Cherokee",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["compass"] = {
		["Name"] = "Jeep Compass",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["fordshelby"] = {
		["Name"] = "Ford Shelby",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["corvettec8"] = {
		["Name"] = "Corvette C8",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["c7"] = {
		["Name"] = "Corvette C7",
		["Weight"] = 200,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 200,
		["Class"] = "Importados"
	},
	["bmwm5f90"] = {
		["Name"] = "Bmw M5 F90",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["teslamodelx"] = {
		["Name"] = "Tesla Model X",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["hondansx"] = {
		["Name"] = "Honda Nsx",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["ferrarif12tdf"] = {
		["Name"] = "Ferrari F12",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["mercedesg65"] = {
		["Name"] = "Mercedes G65",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["dodgechallenger"] = {
		["Name"] = "Dodge Challenger",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["subaruwrx2004"] = {
		["Name"] = "Subaru WRX",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["subaruimpreza"] = {
		["Name"] = "Subaru Impreza",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["hondacivic2000"] = {
		["Name"] = "Honda Civic",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["bmwm8"] = {
		["Name"] = "Bmw M8",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["vwgolfgti"] = {
		["Name"] = "Volkswagen Golf GTI",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["vwgol"] = {
		["Name"] = "Volkswagen Gol",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["caravan"] = {
		["Name"] = "Chevrolet Caravan",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["opalass"] = {
		["Name"] = "Chevrolet Opala SS",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["bmwm135i"] = {
		["Name"] = "Bmw M1 35i",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Importados"
	},
	["etron"] = {
		["Name"] = "Audi E-Tron",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},

	------------- Motos --------------

	["zx10"] = {
		["Name"] = "Kawasaki Ninja Zx-10r",
		["Weight"] = 20,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},

	["tenere1200"] = {
		["Name"] = "Yamaha Tenere 1200",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["hornet2014"] = {
		["Name"] = "Honda Hornet",
		["Weight"] = 20,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["mt09"] = {
		["Name"] = "Honda MT-09",
		["Weight"] = 20,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["panigale"] = {
		["Name"] = "Bmw Panigale",
		["Weight"] = 20,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["rc213v"] = {
		["Name"] = "Honda RC213V",
		["Weight"] = 20,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["yamahar1"] = {
		["Name"] = "Yamaha R1",
		["Weight"] = 20,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["s1000rr"] = {
		["Name"] = "BMW S1000 RR",
		["Weight"] = 20,
		["Price"] = 280000,
		["Mode"] = "Rental",
		["Gemstone"] = 60,
		["Class"] = "Importados"
	},
	["h2carb"] = {
		["Name"] = "Kawasaki Ninja H2R",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["tiger800"] = {
		["Name"] = "Tiger 800",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["xre300"] = {
		["Name"] = "XRE300",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["xt660"] = {
		["Name"] = "XT-660",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["v4sf"] = {
		["Name"] = "Ducati V4s",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["z1000"] = {
		["Name"] = "Kawasaki Z1000",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},
	["zx10r"] = {
		["Name"] = "Kawasaki ZX-10r",
		["Weight"] = 200,
		["Price"] = 31500,
		["Mode"] = "Rental",
		["Gemstone"] = 120,
		["Class"] = "Importados"
	},


	-- --------AERONAVES VIPS -------
	["havok"] = {
		["Name"] = "Havok",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 100,
		["Class"] = "Aeronaves"
	},
	["seasparrow"] = {
		["Name"] = "Seasparrow",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["seasparrow2"] = {
		["Name"] = "Seasparrow2",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["conada"] = {
		["Name"] = "conada",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["volatus"] = {
		["Name"] = "Volatus",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 250,
		["Class"] = "Aeronaves"
	},
	["mammatus"] = {
		["Name"] = "Mammatus",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["dodo"] = {
		["Name"] = "Dodo",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["velum"] = {
		["Name"] = "Velum",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["microlight"] = {
		["Name"] = "Microlight",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 80,
		["Class"] = "Aeronaves"
	},
	["luxor"] = {
		["Name"] = "Luxor",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "Rental",
		["Gemstone"] = 180,
		["Class"] = "Aeronaves"
	},
	["21bmwx6"] = {
		["Name"] = "21bmwx6",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "bmw",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["bmwx7"] = {
		["Name"] = "bmwx7",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "bmwx7",
		["Gemstone"] = 300,
		["Class"] = "Importados"
	},
	["hornet"] = {
		["Name"] = "hornet",
		["Weight"] = 200,
		["Price"] = 315000,
		["Mode"] = "hornet",
		["Gemstone"] = 180,
		["Class"] = "Importados"
	},
	["energy450naga"] = {
		["Name"] = "Mec Guincho",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["energyr1200naga"] = {
		["Name"] = "Mec R1200",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["energyraptornaga"] = {
		["Name"] = "Mec Ford",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["energyrepairnaga"] = {
		["Name"] = "Mec Scania",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["Wrasprinter"] = {
		["Name"] = "Ambulancia HP",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["Wrgle53"] = {
		["Name"] = "VTR HP",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["zr1200samu"] = {
		["Name"] = "R1200 HP",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},
	["zrheli"] = {
		["Name"] = "Heli HP",
		["Weight"] = 20,
		["Price"] = 0,
		["Mode"] = nil,
		["Gemstone"] = 0,
		["Class"] = "Empregos"
	},

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEGLOBAL
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleGlobal()
	return List
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEEXIST
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleExist(Name)
	return List[Name] and true or false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLENAME
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleName(Name)
	if List[Name] and List[Name]["Name"] then
		return List[Name]["Name"]
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLECHEST
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleChest(Name)
	if List[Name] and List[Name]["Weight"] then
		return List[Name]["Weight"]
	end

	return 0
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEPRICE
-----------------------------------------------------------------------------------------------------------------------------------------
function VehiclePrice(Name)
	if List[Name] and List[Name]["Price"] then
		return List[Name]["Price"]
	end

	return 0
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEMODE
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleMode(Name)
	if List[Name] and List[Name]["Mode"] then
		return List[Name]["Mode"]
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEGEMSTONE
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleGemstone(Name)
	if List[Name] and List[Name]["Gemstone"] then
		return List[Name]["Gemstone"]
	end

	return 0
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLECLASS
-----------------------------------------------------------------------------------------------------------------------------------------
function VehicleClass(Name)
	if List[Name] and List[Name]["Class"] then
		return List[Name]["Class"]
	end

	return "Desconhecido"
end
