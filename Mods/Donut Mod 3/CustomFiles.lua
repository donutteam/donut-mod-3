-- Hook Lua's Print Function (add prefix to anything Donut Mod prints)
local _print = print
function print(...)
	_print("[Donut Mod] " .. table.concat({...}, ", "))
end

-- Store Common Filesystem Paths
Paths = {}
Paths.ModPath = GetModPath()
Paths.CustomFiles = Paths.ModPath .. "/CustomFiles"
Paths.Resources = Paths.ModPath .. "/Resources"

-- Load Classes
dofile(Paths.Resources .. "/scripts/classes/extlua.lua")
dofile(Paths.Resources .. "/scripts/classes/game.lua")
dofile(Paths.Resources .. "/scripts/classes/settings.lua")
dofile(Paths.Resources .. "/scripts/classes/difficulty.lua")
dofile(Paths.Resources .. "/scripts/classes/rewards.lua")
dofile(Paths.Resources .. "/scripts/classes/themesupport.lua")
dofile(Paths.Resources .. "/scripts/classes/sptutil.lua")
dofile(Paths.Resources .. "/scripts/classes/levelutil.lua")
dofile(Paths.Resources .. "/scripts/classes/icon.lua")