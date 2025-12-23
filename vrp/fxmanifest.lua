fx_version "bodacious"
game "gta5"

ui_page_preload "yes"

ui_page "Gui/index.html"

client_scripts {
	"Lib/utils.lua",
	"Config/*",
	"Client/*"
}

server_scripts { 
	"Lib/utils.lua",
	"Config/*",
	"Modules/*"
}

files {
	"**/**/*",
	"**/*",
	"*"
}

loadscreen "Loading/darkside.html"

server_export "AddPriority"
server_export "RemovePriority"