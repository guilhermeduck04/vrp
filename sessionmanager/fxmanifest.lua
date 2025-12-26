fx_version "adamant"
game "gta5"

resource_type "map" { gameTypes = { fivem = true } }

resource_type "gametype" { name = "Roleplay" }

map "map.lua"

client_scripts {
	"@vrp/lib/utils.lua",
    "fivem_client.lua",
    "mapmanager/*",
    "sessionmanager.lua",

	"@PolyZone/client.lua",
	"@PolyZone/BoxZone.lua",
	"@PolyZone/EntityZone.lua",
	"@PolyZone/CircleZone.lua",
	"@PolyZone/ComboZone.lua"
}                                                                     

server_scripts { 
    "@vrp/lib/utils.lua",
	"mapmanager/*"
}

export "getRandomSpawnPoint"
export "spawnPlayer"
export "addSpawnPoint"
export "removeSpawnPoint"
export "loadSpawns"
export "setAutoSpawn"
export "setAutoSpawnCallback"
export "forceRespawn"

server_export "getCurrentGameType"
server_export "getCurrentMap"
server_export "changeGameType"
server_export "changeMap"
server_export "doesMapSupportGameType"
server_export "getMaps"
server_export "roundEnded"