
--nodes

minetest.register_node("scifi_nodes:grassblk", {
	description = "Dirt With Alien Grass",
	tiles = {"default_grass.png^[colorize:cyan:80", "default_dirt.png",
		{name = "default_dirt.png^(default_grass_side.png^[colorize:cyan:80)",
			tileable_vertical = false}},
	light_source = 2,
	groups = {crumbly=1, oddly_breakable_by_hand=1, soil=1}
})

minetest.register_node("scifi_nodes:light", {
	description = "blue lightbox",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lighttop.png",
		"scifi_nodes_lighttop.png",
		"scifi_nodes_light.png",
		"scifi_nodes_light.png",
		"scifi_nodes_light.png",
		"scifi_nodes_light.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1}
})

minetest.register_node("scifi_nodes:rfloor", {
	description = "rusty floor",
	tiles = {
		"scifi_nodes_rustfloor.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 10,
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:bfloor", {
	description = "blue floor",
	tiles = {
		"scifi_nodes_bluefloor.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 10,
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults()
})


minetest.register_node("scifi_nodes:stripes2", {
	description = "hazard stripes2",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_stripes2top.png",
		"scifi_nodes_stripes2top.png",
		"scifi_nodes_stripes2.png",
		"scifi_nodes_stripes2.png",
		"scifi_nodes_stripes2.png",
		"scifi_nodes_stripes2.png"
	},
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:gblock", {
	description = "Green metal block",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock.png"
	},
	paramtype = "light",
	groups = {cracky=1};
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:gblock2", {
	description = "Green metal block 2",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_gblock2_top.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock2.png",
		"scifi_nodes_gblock2_fx.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock2_front1.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:gblock3", {
	description = "Green metal block 3",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_gblock2_top.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock2.png",
		"scifi_nodes_gblock2_fx.png",
		"scifi_nodes_gblock.png",
		"scifi_nodes_gblock2_screen.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults()
})



minetest.register_node("scifi_nodes:green_light", {
	description = "green lightbox",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lighttop.png",
		"scifi_nodes_lighttop.png",
		"scifi_nodes_greenlight.png",
		"scifi_nodes_greenlight.png",
		"scifi_nodes_greenlight.png",
		"scifi_nodes_greenlight.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:red_light", {
	description = "red lightbox",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lighttop.png",
		"scifi_nodes_lighttop.png",
		"scifi_nodes_redlight.png",
		"scifi_nodes_redlight.png",
		"scifi_nodes_redlight.png",
		"scifi_nodes_redlight.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:discs", {
	description = "disc shelves",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_discs.png",
		"scifi_nodes_discs.png",
		"scifi_nodes_discs.png",
		"scifi_nodes_discs.png"
	},
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:disc", {
	description = "disc",
	drawtype = "torchlike",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_disc.png"
	},
	inventory_image = "scifi_nodes_disc.png",
	wield_image = "scifi_nodes_disc.png",
	paramtype = "light",
	groups = {cracky=1}
})


minetest.register_node("scifi_nodes:blink", {
	description = "blinking light",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_lightbox.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.00},
	}},
	paramtype = "light",
	groups = {cracky=1},
	light_source = 5,
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:black_lights", {
	description = "black wallpanel",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_black_lights.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:black_screen", {
	description = "black wall screen",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_black_screen.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.00},
	}},
	paramtype = "light",
	groups = {cracky=1},
	light_source = 1,
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("scifi_nodes:screen", {
	description = "electronic screen",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_screen.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1},
	light_source = 5,
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:screen2", {
	description = "electronic screen 2",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_screen2.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1},
	light_source = 5,
	sounds = default.node_sound_glass_defaults()
})



minetest.register_node("scifi_nodes:white_pad", {
	description = "white keypad",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_white2.png",
		"scifi_nodes_white2.png",
		"scifi_nodes_white2.png",
		"scifi_nodes_white2.png",
		"scifi_nodes_white2.png",
		"scifi_nodes_white_pad.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:white_base", {
	description = "white wall base",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_white2.png",
		"scifi_nodes_white2.png",
		"scifi_nodes_white_side.png",
		"scifi_nodes_white_side.png",
		"scifi_nodes_white_side.png",
		"scifi_nodes_white_side.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:grnpipe", {
	description = "green pipe",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_greenpipe_front.png",
		"scifi_nodes_greenpipe_front.png",
		"scifi_nodes_greenpipe_top.png",
		"scifi_nodes_greenpipe_top.png",
		"scifi_nodes_greenpipe_top.png",
		"scifi_nodes_greenpipe_top.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults(),
	on_place = minetest.rotate_node
})


minetest.register_node("scifi_nodes:grnpipe2", {
	description = "broken green pipe",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_greenpipe_front.png",
		"scifi_nodes_greenpipe_front.png",
		"scifi_nodes_greenpipe2_top.png",
		"scifi_nodes_greenpipe2_top.png",
		"scifi_nodes_greenpipe2_top.png",
		"scifi_nodes_greenpipe2_top.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	sounds = default.node_sound_metal_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("scifi_nodes:octrng", {
	description = "Orange Octagon Glass",
	sunlight_propagates = false,
	drawtype = "glasslike",
	tiles = {
		"scifi_nodes_octrng.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = true,
	light_source = 10,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:octgrn", {
	description = "Green Octagon Glass",
	sunlight_propagates = false,
	drawtype = "glasslike",
	tiles = {
		"scifi_nodes_octgrn.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = true,
	light_source = 10,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:octbl", {
	description = "Blue Octagon Glass",
	sunlight_propagates = false,
	drawtype = "glasslike",
	tiles = {
		"scifi_nodes_octbl.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = true,
	light_source = 10,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:octppl", {
	description = "Purple Octagon Glass",
	sunlight_propagates = false,
	drawtype = "glasslike",
	tiles = {
		"scifi_nodes_octppl.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	use_texture_alpha = true,
	light_source = 10,
	groups = {cracky=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:tower", {
	description = "Wind tower",
	sunlight_propagates = false,
	drawtype = "plantlike",
	tiles = {{
		name = "scifi_nodes_tower_anim.png",
		animation = {type = "vertical_frames", aspect_w = 32, aspect_h = 32, length = 1.00},
	}},
	visual_scale = 2,
	inventory_image = "scifi_nodes_tower.png",
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:junk", {
	description = "Junk",
	sunlight_propagates = true,
	paramtype = "light",
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_alternative_flowing = "scifi_nodes:junk",
	liquid_alternative_source = "scifi_nodes:junk",
	liquid_renewable = false,
	liquid_range = 0,
	walkable = false,
	tiles = {
		"scifi_nodes_junk.png"
	},
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, dig_immediate=1}
})


minetest.register_node("scifi_nodes:blumetlight", {
	description = "blue metal light",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_bluemetal.png",
		"scifi_nodes_bluemetal.png",
		"scifi_nodes_blue_metal_light.png",
		"scifi_nodes_blue_metal_light.png",
		"scifi_nodes_blue_metal_light.png",
		"scifi_nodes_blue_metal_light.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})


minetest.register_node("scifi_nodes:lightstp", {
	description = "twin lights",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lightstripe.png"
	},
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:blklt2", {
	description = "black stripe light",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_black_light2.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:blumetstr", {
	description = "blue stripe light",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_blue_metal_stripes2.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:glass", {
	description = "dark glass",
	drawtype = "glasslike",
	sunlight_propagates = true,
	tiles = {
		"scifi_nodes_glass.png"
	},
	use_texture_alpha = true,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:whtlightbnd", {
	description = "white light stripe",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lightband.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1},
	sounds = default.node_sound_glass_defaults()
})

--edited wool code (Copyright (C) 2012 celeron55, Perttu Ahola <celeron55@gmail.com>)


-- This uses a trick: you can first define the recipes using all of the base
-- colors, and then some recipes using more specific colors for a few non-base
-- colors available. When crafting, the last recipes will be checked first.
--add new block using texture name(without "scifi_nodes_" prefix) then the description, and then the name of the block
local nodetypes = {
	-- { name, description, shortname?, light, colorable }
	{"blue",      "blue lines",        "blue"},
	{"holes",       "metal with holes","holes"},
	{"white2",      "plastic",         "white2", 0, true},
    {"super_white",      "Super Plastic",         "super_white", 11},
    {"ultra_white",      "Ultra Plastic",         "ultra_white", default.LIGHT_MAX},
	{"engine",      "engine",          "engine"},
	{"wall",      "metal wall",        "wall"},
	{"white",      "plastic wall",     "white", 0, true},
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
	{"pipe",      "wall pipe",       "pipe2"},
	{"pipeside",      "side pipe",       "pipe3"},
	{"tile",      "white tile",       "tile"},
	{"whiteoct",      "white octagon",       "whiteoct", 0, true},
	{"whitetile",      "white tile2",       "whttl", 0, true},
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
	{"monitorwall",      "Wall monitors",       "monitorwall"},
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

local has_unifieddyes_mod = minetest.get_modpath("unifieddyes")

for _, row in ipairs(nodetypes) do
	local name = row[1]
	local desc = row[2]
	local light = row[4]
	local is_colorable = row[5]

	-- Node Definition
	local node_def = {
		description = desc,
		tiles = {"scifi_nodes_"..name..".png"},
		groups = {cracky=1},
		paramtype = "light",
		paramtype2 = "facedir",
		light_source = light,
		sounds = default.node_sound_glass_defaults()
	}

	if is_colorable and has_unifieddyes_mod then
		-- overwrite attributes on the "uncolored" node
		node_def.palette = "unifieddyes_palette_extended.png"
		node_def.groups.ud_param2_colorable = 1
		node_def.airbrush_replacement_node = "scifi_nodes:"..name.."_colored"
	end

	-- register node
	minetest.register_node("scifi_nodes:"..name, node_def)

	if is_colorable and has_unifieddyes_mod then
		-- register colored node
		minetest.register_node("scifi_nodes:"..name.."_colored", {
			description = desc,
			tiles = {"scifi_nodes_"..name..".png"},
			groups = {
				cracky = 1,
				ud_param2_colorable = 1,
				not_in_creative_inventory = 1
			},
			palette = "unifieddyes_palette_extended.png",
			paramtype = "light",
			paramtype2 = "color",
			light_source = light,
			sounds = default.node_sound_glass_defaults(),
			on_construct = unifieddyes.on_construct,
			on_dig = unifieddyes.on_dig
		})
	end
end
