local has_unifieddyes_mod = minetest.get_modpath("unifieddyes")
local has_moreblocks_mod = minetest.get_modpath("moreblocks")
local has_slats_mod = minetest.get_modpath("slats")
local has_advtrains_mod = minetest.get_modpath("advtrains")
local has_signs_api_mod = minetest.get_modpath("signs_api")

--nodes

minetest.register_node("scifi_nodes:grassblk", {
	description = "Dirt With Alien Grass",
	tiles = {"scifi_nodes_grass_top.png^[colorize:cyan:80", "scifi_nodes_dirt.png",
		{name = "scifi_nodes_dirt.png^(scifi_nodes_grass_side.png^[colorize:cyan:80)",
			tileable_vertical = false}},
	light_source = 2,
	groups = {crumbly=1, oddly_breakable_by_hand=1, soil=1},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_dirt_defaults({
		footstep = scifi_nodes.node_sound_plant_defaults().footstep,
	})
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults(),
})

minetest.register_node("scifi_nodes:rfloor", {
	description = "rusty floor",
	tiles = {
		"scifi_nodes_rustfloor.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 10,
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:bfloor", {
	description = "blue floor",
	tiles = {
		"scifi_nodes_bluefloor.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 10,
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_defaults(),
})

minetest.register_node("scifi_nodes:greenbar_animated", {
	description = "animated green light bar",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_greenbar.png",
		"scifi_nodes_greenbar.png", {
			name="scifi_nodes_greenbar_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.00},
		}
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	light_source = 10,
	sounds = scifi_nodes.node_sound_glass_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("scifi_nodes:blink", {
	description = "blinking light",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_lightbox.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.00},
	}},
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	light_source = 5,
	sounds = scifi_nodes.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:black_lights", {
	description = "black wallpanel",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_black_lights.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:black_screen", {
	description = "black wall screen",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_black_screen.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.00},
	}},
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	light_source = 1,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:screen", {
	description = "electronic screen",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_screen.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	light_source = 5,
	sounds = scifi_nodes.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:screen2", {
	description = "electronic screen 2",
	sunlight_propagates = false,
	tiles = {{
		name="scifi_nodes_screen2.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.50},
	}},
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	light_source = 5,
	sounds = scifi_nodes.node_sound_glass_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults(),
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults(),
	on_place = minetest.rotate_node
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
	groups = {cracky=2, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
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
	groups = {snappy=1, oddly_breakable_by_hand=1, liquid=3, dig_immediate=1},
	is_ground_content = false,
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
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
})


minetest.register_node("scifi_nodes:lightstp", {
	description = "twin lights",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lightstripe.png"
	},
	light_source = minetest.LIGHT_MAX,
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:blklt2", {
	description = "black stripe light",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_black_light2.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:blumetstr", {
	description = "blue stripe light",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_blue_metal_stripes2.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

minetest.register_node("scifi_nodes:glass", {
	description = "dark glass",
	drawtype = "glasslike",
	sunlight_propagates = true,
	tiles = {
		"scifi_nodes_glass.png"
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:whtlightbnd", {
	description = "white light stripe",
	sunlight_propagates = false,
	tiles = {
		"scifi_nodes_lightband.png"
	},
	light_source = 10,
	paramtype = "light",
	groups = {cracky=1, dig_generic = 3},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_metal_defaults()
})

-- read "nodes.json"
local f = assert(io.open(minetest.get_modpath("scifi_nodes") .. "/nodes.json", "rb"))
local nodes = assert(minetest.parse_json(f:read("*all")))
f:close()

-- register all nodes
for name, def in pairs(nodes) do

	-- default to "metal" sounds if not specified
	local sounds
	if def.sounds == "stone" then
		sounds = scifi_nodes.node_sound_stone_defaults()
	else
		sounds = scifi_nodes.node_sound_metal_defaults()
	end

	-- tiles (default to nodename as texture-name)
	local tiles = {"scifi_nodes_" .. name .. ".png"}
	if def.texture_name then
		tiles = {"scifi_nodes_" .. def.texture_name .. ".png"}
	end

	-- optional texture modifier
	if def.texture_modifier then
		tiles[1] = tiles[1] .. def.texture_modifier
	end

	-- Node Definition
	local node_def = {
		description = def.description,
		drawtype = def.drawtype or "normal",
		sunlight_propagates = def.sunlight_propagates,
		tiles = tiles,
		groups = {cracky=1, dig_generic = 3},
		is_ground_content = false,
		paramtype = "light",
		paramtype2 = def.paramtype2 or "facedir",
		light_source = def.light,
		sounds = sounds,
	}

	if def.colorable and has_unifieddyes_mod then
		-- overwrite attributes on the "uncolored" node
		node_def.palette = "unifieddyes_palette_extended.png"
		node_def.groups.ud_param2_colorable = 1
		node_def.airbrush_replacement_node = "scifi_nodes:"..name.."_colored"
	end

	-- register node
	local nodename = "scifi_nodes:" .. name
	minetest.register_node(nodename , node_def)

	-- unified dyes registration
	if def.colorable and has_unifieddyes_mod then
		minetest.register_node("scifi_nodes:"..name.."_colored", {
			description = def.description,
			tiles = tiles,
			groups = {
				cracky = 1,
				ud_param2_colorable = 1,
				not_in_creative_inventory = 1
			},
			is_ground_content = false,
			palette = "unifieddyes_palette_extended.png",
			paramtype = "light",
			paramtype2 = "color",
			light_source = def.light,
			sounds = scifi_nodes.node_sound_glass_defaults(),
			on_construct = unifieddyes.on_construct,
			on_dig = unifieddyes.on_dig
		})
	end

	-- moreblocks registration (default to register all except if "false" encountered)
	if has_moreblocks_mod and def.moreblocks ~= false then
		stairsplus:register_all("scifi_nodes", name, "scifi_nodes:"..name, {
			description = def.description,
			tiles = tiles,
			use_texture_alpha = "clip",
			groups = {cracky=1, dig_generic = 3},
			paramtype = "light",
			paramtype2 = "facedir",
			light_source = def.light,
			sounds = sounds,
		})
	end

	if def.ambience then
		for soundname, opts in pairs(def.ambience) do
			scifi_nodes.register_ambience(nodename, soundname, opts)
		end
	end

	-- advtrains platform registration
	if has_advtrains_mod and def.advtrains_platform then
		advtrains.register_platform("scifi_nodes", "scifi_nodes:" .. name)
	end

	if has_signs_api_mod and def.signs_banner then
		signs_api.register_sign("scifi_nodes", name .. "_banner", {
			depth = 1/16,
			width = 5,
			height = 1,
			entity_fields = {
				maxlines = 1,
				color = def.signs_banner_color or "#fff",
			},
			node_fields = {
				visual_scale = 1,
				description = name .. " banner",
				tiles = tiles,
				inventory_image = "scifi_nodes_" .. name .. ".png",
				use_texture_alpha = "clip",
			},
		})
	end

	if has_slats_mod and def.slat then
		slats.register_slat(
			name,
			"scifi_nodes:" .. name,
			table.copy(node_def.groups),
			"scifi_nodes_" .. name .. ".png^slats_slat_overlay.png^[makealpha:255,126,126",
			def.description .. " Slat",
			sounds
		)
	end
end
