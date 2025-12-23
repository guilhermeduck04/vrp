-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORDS
-----------------------------------------------------------------------------------------------------------------------------------------
Discords = {
	["Connect"] = "https://discord.com/api/webhooks/1374667578194137141/KvDBVjhT4FA_dGZ0G42ylxBxFKQkkuDFNHds5cM0qjpcB-ObyyC0SZjY975e_tp-LaiH",
	["Disconnect"] = "https://discord.com/api/webhooks/1374667677205004290/By4gZ-wCkxlQ2h6xlEcINphqvJMv3c4gd2cLodHZ6mNgoou_l08HOEG1FxmuYA9l0TI0",
	["Airport"] = "https://discord.com/api/webhooks/1374667777289490593/gUPBkgNtAmUdjSfbIeOHhH7bvUJ7d5RpCd_BUcbKSUGhv88KGfKhPVl_-yCzH181kYEr",
	["Deaths"] = "https://discord.com/api/webhooks/1374667880049676298/3IL1_Zk_0T6uriCalgGzq7iMAOun8nJhuwWiL1FKs3DcD2c2uaylnSFK_6_jv6ykUijr",
	["Policia"] = "https://discord.com/api/webhooks/1374667987252154449/P8RSKF1AdK99d6GK8KVOs4QGpxt_cJ-869wP8Vvy0uoaxm9rB7bCUKTdwotg40BNvUyg",
	["Hospital"] = "https://discord.com/api/webhooks/1374668101026578574/5a5Di1lhGdGwTQrs2Fdx_fxIl9lJNjZ5XMzBrQl18vMxoRaEaDsdSXhj_sz2QfWVxXpM",
	["Gemstone"] = "https://discord.com/api/webhooks/1374668197776855144/7IHVnmHtBwjaRPfdMZv52TZpQwFW2JqyiEacf0GU5FuzgNV2P9mAaIHEq4yb6EBPB0kL",
	["Login"] = "https://discord.com/api/webhooks/1374668334783533207/SAQ7Xpa3h52xgx0nQ66azi8yG9UMLmTvZJBwIlvfblOwmuTygLxsqfaIqXp00dJi3UZK"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Discord",function(Hook,Message,Color)
	PerformHttpRequest(Discords[Hook],function(err,text,headers) end,"POST",json.encode({
		username = ServerName,
		embeds = { { color = Color, description = Message } }
	}),{ ["Content-Type"] = "application/json" })
end)