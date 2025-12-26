AddEventHandler('onClientMapStart',function()
	exports.sessionmanager:setAutoSpawn(true)
	exports.sessionmanager:forceRespawn()
end)