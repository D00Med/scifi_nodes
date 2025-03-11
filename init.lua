--scifi_nodes by D00Med

scifi_nodes = {}

local MP = minetest.get_modpath("scifi_nodes")


dofile(MP.."/sounds.lua")

if minetest.get_modpath("xpanes") then
	dofile(MP.."/panes.lua")
end

dofile(MP.."/common.lua")

if minetest.get_modpath("default") then
	-- only load builder if the default mod is available
	-- the formspecs depend on it
	dofile(MP.."/builder.lua")
end

dofile(MP.."/ambience.lua")
dofile(MP.."/chest.lua")
dofile(MP.."/plants.lua")
dofile(MP.."/models.lua")
dofile(MP.."/nodes.lua")
dofile(MP.."/access_card.lua")
dofile(MP.."/doors.lua")
dofile(MP.."/switch.lua")
dofile(MP.."/protected_switch.lua")
dofile(MP.."/nodeboxes.lua")
dofile(MP.."/palm_scanner.lua")
dofile(MP.."/digicode.lua")
dofile(MP.."/octagon_panes.lua")
dofile(MP.."/octagon_glass.lua")
dofile(MP.."/forcefield.lua")
dofile(MP.."/crafts.lua")

if minetest.get_modpath("letters") then
	-- register letter nodes
	dofile(MP.."/letters.lua")
end

if minetest.get_modpath("mesecons_stealthnode") then
	-- register stealthnodes
	dofile(MP.."/stealthnodes.lua")
end

if minetest.get_modpath("mtt") and mtt.enabled then
	dofile(MP .. "/mtt.lua")
end