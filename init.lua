--scifi_nodes by D00Med

scifi_nodes = {}

local MP = minetest.get_modpath("scifi_nodes")

if minetest.get_modpath("xpanes") then
	dofile(MP.."/panes.lua")
end

dofile(MP.."/common.lua")
dofile(MP.."/builder.lua")
dofile(MP.."/chest.lua")
dofile(MP.."/plants.lua")
dofile(MP.."/nodes.lua")
dofile(MP.."/doors.lua")
dofile(MP.."/switches.lua")
dofile(MP.."/nodeboxes.lua")
dofile(MP.."/itemholders.lua")
dofile(MP.."/palm_scanner.lua")
dofile(MP.."/digicode.lua")
dofile(MP.."/models.lua")
dofile(MP.."/crafts.lua")
