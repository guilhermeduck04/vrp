local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("survival",src)
Proxy.addInterface("survival",src)

vCLIENT = Tunnel.getInterface("survival")
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
cfg = {}
config = {}

cfg.weebhook = "" -- WEEBHOOK
cfg.logo = "" -- IMAGEM DO WEEBHOOK
cfg.color = 6356736 -- COR DO WEEBHOOK

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE DISCONNECT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDropped", function(reason)
    local source = source
    local coords = GetEntityCoords(GetPlayerPed(source))
    local user_id = vRP.getUserId(source)
    if user_id then
        TriggerClientEvent("anticl", -1, user_id, coords, reason )
    end
end)