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
	use_texture_alpha = "clip",
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
	{"blue",      "blue lines"},
	{"holes",       "metal with holes"},
	{"white2",      "plastic",},
	{"super_white",      "Super Plastic", 11},
	{"ultra_white",      "Ultra Plastic", default.LIGHT_MAX},
--	{"engine",      "engine",          "engine"},
	{"wall",      "metal wall"},
	{"white",      "plastic wall"},
	{"stripes2top",     "dirty metal block"},
	{"rough",      "rough metal"},
	{"lighttop",      "metal block"},
	{"red",      "red lines"},
	{"green",      "green lines"},
	{"vent2",      "vent"},
	{"stripes",      "hazard stripes"},
	{"rust",      "rusty metal"},
	{"mesh",      "metal mesh"},
	{"black",      "black wall"},
	{"blackoct",      "black octagon"},
	{"blackpipe",      "black pipe"},
	{"blacktile",      "black tile"},
	{"blacktile2",      "black tile 2"},
	{"blackvent",      "black vent"},
	{"bluebars",      "blue bars"},
	{"bluemetal",      "blue metal"},
	{"bluetile",      "blue tile"},
	{"greytile",      "grey tile"},
	{"mesh2",      "metal floormesh"},
	{"pipe",      "wall pipe"},
	{"pipeside",      "side pipe"},
	{"tile",      "white tile"},
	{"whiteoct",      "white octagon"},
	{"whitetile",      "white tile2"},
	{"black_detail",      "black detail"},
	{"green_square",      "green metal block"},
	{"red_square",      "red metal block"},
	{"grey_square",      "grey metal block"},
	{"blue_square",      "blue metal block"},
	{"black_mesh",      "black vent block"},
	{"dent",      "dented metal block"},
	{"greenmetal",      "green metal wall"},
	{"greenmetal2",      "green metal wall2"},
	{"greenlights",      "green wall lights",       10},
	{"greenlights2",      "green wall lights2",     10},
	{"greenbar",      "green light bar",            10},
	{"green2",      "green wall panel"},
	{"greentubes",      "green pipes"},
	{"grey",      "grey wall"},
	{"greybolts",      "grey wall bolts"},
	{"greybars",      "grey bars"},
	{"greydots",      "grey wall dots"},
	{"greygreenbar",      "gray power pipe",        10},
	{"octofloor",      "Doom floor"},
	{"octofloor2",      "Brown Doom floor"},
	{"doomwall1",      "Doom wall 1"},
	{"doomwall2",      "Doom wall 2"},
	{"doomwall3",      "Doom wall 3"},
	{"doomwall4",      "Doom wall 4"},
	{"doomwall41",      "Doom wall 4.1"},
	{"doomwall42",      "Doom wall 4.2"},
	{"doomwall43",      "Doom wall 4.3"},
	{"doomwall431",      "Doom wall 4.3.1"},
	{"doomwall44",      "Doom wall 4.4"},
	{"blackdmg",      "Damaged black wall"},
	{"blackdmgstripe",      "Damaged black wall(stripes)"},
	{"doomengine",      "Doom engine wall"},
--	{"monitorwall",      "Wall monitors",       "monitorwall"},
	{"screen3",      "Wall monitor"},
	{"doomlight",      "Doom light",       12},
	{"bluwllight",      "Blue wall light", default.LIGHT_MAX},
	{"bluegrid",      "Blue Grid", 5},
	{"fan",      "Fan"},
	{"ppllght",      "Purple wall light", default.LIGHT_MAX},
	{"pplwll",      "Purple wall"},
	{"pplwll2",      "Purple wall2"},
	{"pplwll3",      "Purple wall3"},
	{"pplwll4",      "Purple wall4"},
	{"pplblk",      "Purple tile"},
	{"purple",      "Purple node"},
	{"rock",      "Moonstone"},
	{"rock2",      "Moonstone2"},
	{"blackvnt",      "Black vent"},
	{"blackplate",      "Black plate"},
}

if minetest.global_exists("stairsplus") then
	for _, row in ipairs(node.types) do
		local name = row[1]

		-- Node Definition
		stairsplus:register_all("scifi_nodes", name, "scifi_nodes:"..name, {
			description = row[2],
			tiles = {"scifi_nodes_"..name..".png"},
			use_texture_alpha = "clip",
			groups = {cracky=1},
			paramtype = "light",
			paramtype2 = "facedir",
			light_source = row[3],
		})
	end
end
