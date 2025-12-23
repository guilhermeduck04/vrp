SERVER = IsDuplicityVersion()
CLIENT = not SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLE.MAXN
-----------------------------------------------------------------------------------------------------------------------------------------
function table.maxn(t)
	local max = 0
	for k,v in pairs(t) do
		local n = tonumber(k)
		if n and n > max then max = n end
	end
	return max
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MODULE
-----------------------------------------------------------------------------------------------------------------------------------------
local modules = {}
function module(rsc,path)
	if path == nil then
		path = rsc
		rsc = "vrp"
	end

	local key = rsc..path
	local module = modules[key]
	if module then
		return module
	else
		local code = LoadResourceFile(rsc,path..".lua")
		if code then
			local f,err = load(code,rsc.."/"..path..".lua")
			if f then
				local ok,res = xpcall(f,debug.traceback)
				if ok then
					modules[key] = res
					return res
				else
					error("error loading module "..rsc.."/"..path..":"..res)
				end
			else
				error("error parsing module "..rsc.."/"..path..":"..debug.traceback(err))
			end
		else
			error("resource file "..rsc.."/"..path..".lua not found")
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WAIT
-----------------------------------------------------------------------------------------------------------------------------------------
local function wait(self)
	local rets = Citizen.Await(self.p)
	if not rets then
		rets = self.r
	end

	return table.unpack(rets,1,table.maxn(rets))
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARETURN
-----------------------------------------------------------------------------------------------------------------------------------------
local function areturn(self,...)
	self.r = {...}
	self.p:resolve(self.r)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ASYNC
-----------------------------------------------------------------------------------------------------------------------------------------
function async(func)
	if func then
		Citizen.CreateThreadNow(func)
	else
		return setmetatable({ wait = wait, p = promise.new() }, { __call = areturn })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARSEINT
-----------------------------------------------------------------------------------------------------------------------------------------
function parseInt(v)
	local n = tonumber(v)
	if n == nil then 
		return 0
	else
		return math.floor(n)
	end
end

function parseDouble(v)
	local n = tonumber(v)
	if n == nil then n = 0 end
	return n
end

function parseFloat(v)
	return parseDouble(v)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SANITIZESTRING
-----------------------------------------------------------------------------------------------------------------------------------------
local sanitize_tmp = {}
function sanitizeString(str, strchars, allow_policy)
	local r = ""
	local chars = sanitize_tmp[strchars]
	if chars == nil then
		chars = {}
		local size = string.len(strchars)
		for i=1,size do
			local char = string.sub(strchars,i,i)
			chars[char] = true
		end
		sanitize_tmp[strchars] = chars
	end

	size = string.len(str)
	for i=1,size do
		local char = string.sub(str,i,i)
		if (allow_policy and chars[char]) or (not allow_policy and not chars[char]) then
			r = r..char
		end
	end
	return r
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPLITSTRING
-----------------------------------------------------------------------------------------------------------------------------------------
function splitString(str, sep)
	if sep == nil then sep = "%s" end

	local t={}
	local i=1

	for str in string.gmatch(str, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end

	return t
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FORMAT
-----------------------------------------------------------------------------------------------------------------------------------------
function format(n)
	local left,num,right = string.match(parseInt(n),"^([^%d]*%d)(%d*)(.-)$")
	return left..(num:reverse():gsub('(%d%d%d)','%1.'):reverse())..right
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MATHLEGTH
-----------------------------------------------------------------------------------------------------------------------------------------
function mathLength(Number)
	return math.ceil(Number * 100) / 100
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPLETETIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
function CompleteTimers(Seconds)
	local Days = math.floor(Seconds / 86400)
	Seconds = Seconds - Days * 86400
	local Hours = math.floor(Seconds / 3600)
	Seconds = Seconds - Hours * 3600
	local Minutes = math.floor(Seconds / 60)
	Seconds = Seconds - Minutes * 60

	if Days > 0 then
		return string.format("<b>%d Dias</b>, <b>%d Horas</b>, <b>%d Minutos</b>",Days,Hours,Minutes)
	elseif Hours > 0 then
		return string.format("<b>%d Horas</b>, <b>%d Minutos</b> e <b>%d Segundos</b>",Hours,Minutes,Seconds)
	elseif Minutes > 0 then
		return string.format("<b>%d Minutos</b> e <b>%d Segundos</b>",Minutes,Seconds)
	elseif Seconds > 0 then
		return string.format("<b>%d Segundos</b>",Seconds)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MINIMALTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
function MinimalTimers(Seconds)
	local Days = math.floor(Seconds / 86400)
	Seconds = Seconds - Days * 86400
	local Hours = math.floor(Seconds / 3600)
	Seconds = Seconds - Hours * 3600
	local Minutes = math.floor(Seconds / 60)
	Seconds = Seconds - Minutes * 60

	if Days > 0 then
		return string.format("%d Dias, %d Horas",Days,Hours)
	elseif Hours > 0 then
		return string.format("%d Horas, %d Minutos",Hours,Minutes)
	elseif Minutes > 0 then
		return string.format("%d Minutos",Minutes)
	elseif Seconds > 0 then
		return string.format("%d Segundos",Seconds)
	end
end