--some code taken from moreblocks(the collision and selection boxes), license below:
--Copyright (c) 2011-2015 Calinou and contributors.
--Licensed under the zlib license.

function scifi_nodes.register_slope(name, desc, texture, light)
minetest.register_node("scifi_nodes:slope_"..name, {
	description = desc.." Slope",
	sunlight_propagates = false,
	drawtype = "mesh",
	mesh = "scifi_nodes_slope.obj",
	tiles = texture,
		selection_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
		collision_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = light,
	groups = {cracky=1},
	on_place = minetest.rotate_node
})
end

-- register some blocks in stairsplus if available (part of moreblocks)
scifi_nodes.register_slope("white2", "Plastic", {"scifi_nodes_white2.png",}, 0)
scifi_nodes.register_slope("super_white", "Super Plastic", {"scifi_nodes_super_white.png",}, 11)
scifi_nodes.register_slope("ultra_white", "Super Plastic", {"scifi_nodes_ultra_white.png",}, default.LIGHT_MAX)
scifi_nodes.register_slope("black", "Black", {"scifi_nodes_black.png",}, 0)
scifi_nodes.register_slope("white", "White", {"scifi_nodes_white.png",}, 0)
scifi_nodes.register_slope("grey", "Grey", {"scifi_nodes_grey.png",}, 0)
scifi_nodes.register_slope("bluebars", "Blue bars", {"scifi_nodes_bluebars.png",}, 0)
scifi_nodes.register_slope("mesh2", "Metal floormesh", {"scifi_nodes_mesh2.png",}, 0)
scifi_nodes.register_slope("mesh", "Metal mesh", {"scifi_nodes_mesh.png",}, 0)
scifi_nodes.register_slope("vent", "Vent", {"scifi_nodes_vent2.png",}, 0)
scifi_nodes.register_slope("rlight", "Red light", {"scifi_nodes_redlight.png",}, 10)
scifi_nodes.register_slope("blight", "Blue light", {"scifi_nodes_light.png",}, 10)
scifi_nodes.register_slope("glight", "Green light", {"scifi_nodes_greenlight.png",}, 10)
scifi_nodes.register_slope("holes", "Holes", {"scifi_nodes_holes.png",}, 0)
scifi_nodes.register_slope("pipe", "Pipe", {"scifi_nodes_pipe.png",}, 0)
scifi_nodes.register_slope("stripes", "Stripes", {"scifi_nodes_stripes.png",}, 0)
scifi_nodes.register_slope("screen", "Screen", {"scifi_nodes_screen3.png",}, 5)
scifi_nodes.register_slope("lightstripe", "Lightstripe", {"scifi_nodes_lightstripe.png",}, default.LIGHT_MAX)
scifi_nodes.register_slope("blight2", "Blue Light 2", {"scifi_nodes_capsule3.png",}, default.LIGHT_MAX)
scifi_nodes.register_slope("wallpipe", "Alien Pipe", {"scifi_nodes_wallpipe.png",}, 0)
scifi_nodes.register_slope("alien", "Alien Wall", {"scifi_nodes_alnslp.png",}, 0)
scifi_nodes.register_slope("purple", "Purple", {"scifi_nodes_purple.png",}, 0)
scifi_nodes.register_slope("gblock", "Gblock", {"scifi_nodes_gblock2_front1.png",}, 0)
scifi_nodes.register_slope("greenmetal", "Green metal", {"scifi_nodes_greenmetal.png",}, 0)
scifi_nodes.register_slope("bluemetal", "Blue metal", {"scifi_nodes_bluemetal.png",}, 0)
scifi_nodes.register_slope("wall", "Metal wall", {"scifi_nodes_wall.png",}, 0)
scifi_nodes.register_slope("rough", "Rough metal", {"scifi_nodes_rough.png",}, 0)
scifi_nodes.register_slope("blklt2", "Black stripe light", {"scifi_nodes_black_light2.png",}, 10)

-- Register Nodes for Stairsplus
local node = {}

node.types = {
	{"blue",      "blue lines",        "blue"},
	{"holes",       "metal with holes","holes"},
	{"white2",      "plastic",         "white2"},
    {"super_white",      "Super Plastic",         "super_white", 11},
    {"ultra_white",      "Ultra Plastic",         "ultra_white", default.LIGHT_MAX},
--	{"engine",      "engine",          "engine"},
	{"wall",      "metal wall",        "wall"},
	{"white",      "plastic wall",     "white"},
	{"stripes2top",     "dirty metal block","metal2"},
	{"rough",      "rough metal",      "rough"},
	{"lighttop",      "metal block",      "metal"},
	{"red",      "red lines",          "red"},
	{"green",      "green lines",      "green"},
	{"vent2",      "vent",              "vent"},
	{"stripes",      "hazard stripes", "stripes"},
	{"rust",      "rusty metal",       "rust"},
	{"mesh",      "metal mesh",       "mesh"},
	{"black",      "black wall",       "black"},
	{"blackoct",      "black octagon",       "blackoct"},
	{"blackpipe",      "black pipe",       "blackpipe"},
	{"blacktile",      "black tile",       "blktl"},
	{"blacktile2",      "black tile 2",       "blktl2"},
	{"blackvent",      "black vent",       "blkvnt"},
	{"bluebars",      "blue bars",       "bluebars"},
	{"bluemetal",      "blue metal",       "blumtl"},
	{"bluetile",      "blue tile",       "blutl"},
	{"greytile",      "grey tile",       "grytl"},
	{"mesh2",      "metal floormesh",       "mesh2"},
	{"white",      "plastic wall",       "white"},
	{"pipe",      "wall pipe",       "pipe2"},
	{"pipeside",      "side pipe",       "pipe3"},
	{"tile",      "white tile",       "tile"},
	{"whiteoct",      "white octagon",       "whiteoct"},
	{"whitetile",      "white tile2",       "whttl"},
	{"black_detail",      "black detail",       "blckdtl"},
	{"green_square",      "green metal block",       "grnblck"},
	{"red_square",      "red metal block",       "redblck"},
	{"grey_square",      "grey metal block",       "greyblck"},
	{"blue_square",      "blue metal block",       "blublck"},
	{"black_mesh",      "black vent block",       "blckmsh"},
	{"dent",      "dented metal block",       "dent"},
	{"greenmetal",      "green metal wall",       "grnmetl"},
	{"greenmetal2",      "green metal wall2",       "grnmetl2"},
	{"greenlights",      "green wall lights",       "grnlt", 10},
	{"greenlights2",      "green wall lights2",       "grnlt2", 10},
	{"greenbar",      "green light bar",       "grnlghtbr", 10},
	{"green2",      "green wall panel",       "grn2"},
	{"greentubes",      "green pipes",       "grntubes"},
	{"grey",      "grey wall",       "gry"},
	{"greybolts",      "grey wall bolts",       "gryblts"},
	{"greybars",      "grey bars",       "grybrs"},
	{"greydots",      "grey wall dots",       "grydts"},
	{"greygreenbar",      "gray power pipe",       "grygrnbr", 10},
	{"octofloor",      "Doom floor",       "octofloor"},
	{"octofloor2",      "Brown Doom floor",       "octofloor2"},
	{"doomwall1",      "Doom wall 1",       "doomwall1"},
	{"doomwall2",      "Doom wall 2",       "doomwall2"},
	{"doomwall3",      "Doom wall 3",       "doomwall3"},
	{"doomwall4",      "Doom wall 4",       "doomwall4"},
	{"doomwall41",      "Doom wall 4.1",       "doomwall4.1"},
	{"doomwall42",      "Doom wall 4.2",       "doomwall4.2"},
	{"doomwall43",      "Doom wall 4.3",       "doomwall4.3"},
	{"doomwall431",      "Doom wall 4.3.1",       "doomwall4.3.1"},
	{"doomwall44",      "Doom wall 4.4",       "doomwall4.4"},
	{"blackdmg",      "Damaged black wall",       "blckdmg"},
	{"blackdmgstripe",      "Damaged black wall(stripes)",       "blckdmgstripe"},
	{"doomengine",      "Doom engine wall",       "doomengine"},
--	{"monitorwall",      "Wall monitors",       "monitorwall"},
	{"screen3",      "Wall monitor",       "screen3"},
	{"doomlight",      "Doom light",       "doomlight", 12},
	{"bluwllight",      "Blue wall light", "capsule3", default.LIGHT_MAX},
	{"bluegrid",      "Blue Grid", "bluegrid", 5},
	{"fan",      "Fan",       "fan"},
	{"ppllght",      "Purple wall light", "", default.LIGHT_MAX},
	{"pplwll",      "Purple wall", "", 0},
	{"pplwll2",      "Purple wall2", "", 0},
	{"pplwll3",      "Purple wall3", "", 0},
	{"pplwll4",      "Purple wall4", "", 0},
	{"pplblk",      "Purple tile", "", 0},
	{"purple",      "Purple node", "", 0},
	{"rock",      "Moonstone", "", 0},
	{"rock2",      "Moonstone2", "", 0},
	{"blackvnt",      "Black vent", "", 0},
	{"blackplate",      "Black plate", "", 0},
}

if minetest.global_exists("stairsplus") then

	for _, row in ipairs(node.types) do
		local name = row[1]
		local desc = row[2]
		local light = row[4]
		-- Node Definition
		stairsplus:register_all("scifi_nodes", row[1], "scifi_nodes:"..name, {
			description = desc,
			tiles = {"scifi_nodes_"..name..".png"},
			groups = {cracky=1},
			paramtype = "light",
			paramtype2 = "facedir",
			light_source = light,
		})
	end
end
