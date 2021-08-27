--scifi_nodes by D00Med

scifi_nodes = {}

local MP = minetest.get_modpath("scifi_nodes")


dofile(MP.."/sounds.lua")

if minetest.get_modpath("xpanes") then
	dofile(MP.."/panes.lua")
end

dofile(MP.."/common.lua")

if minetest.get_modpath("default") then
	-- only load builder and chest if the default mod is available
	-- the formspecs depend on it
	dofile(MP.."/builder.lua")
	dofile(MP.."/chest.lua")
end

dofile(MP.."/plants.lua")
dofile(MP.."/nodes.lua")
dofile(MP.."/doors.lua")
dofile(MP.."/switch.lua")
dofile(MP.."/protected_switch.lua")
dofile(MP.."/nodeboxes.lua")
dofile(MP.."/palm_scanner.lua")
dofile(MP.."/digicode.lua")
dofile(MP.."/models.lua")
dofile(MP.."/octagon_panes.lua")
dofile(MP.."/crafts.lua")
