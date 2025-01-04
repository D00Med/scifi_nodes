
local function register(basename, color, texture)
  local nodename_single = "scifi_nodes:" .. basename .. "_pane"
  local nodename_double = "scifi_nodes:" .. basename .. "_pane_double"
  local nodename_offset = "scifi_nodes:" .. basename .. "_pane_offset"
  local nodename_slope = "scifi_nodes:" .. basename .. "_slope"
  local recipe_ingredient = "scifi_nodes:" .. basename
  local base_decription = color ..  " octagon glass"

  -- single height
  minetest.register_node(nodename_single, {
    description = base_decription .. " pane",
    drawtype = "nodebox",
    tiles = {
      texture
    },
    wield_image = texture,
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    is_ground_content = false,
    node_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.03125, 0.5, 0.5, 0.03125}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.25, 0.5, 0.5, 0.25}},
    },
    groups = {
      cracky = 3,
      oddly_breakable_by_hand = 3
    },
    use_texture_alpha = "blend",
    sounds = scifi_nodes.node_sound_glass_defaults()
  })

  -- double height
  minetest.register_node(nodename_double, {
    description = base_decription .. " pane (double)",
    drawtype = "nodebox",
    tiles = {
      texture
    },
    wield_image = texture,
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    is_ground_content = false,
    node_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.03125, 0.5, 1.5, 0.03125}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.25, 0.5, 1.5, 0.25}},
    },
    groups = {
      cracky = 3,
      oddly_breakable_by_hand = 3
    },
    use_texture_alpha = "blend",
    sounds = scifi_nodes.node_sound_glass_defaults()
  })

  -- single height with offset
  minetest.register_node(nodename_offset, {
    description = base_decription .. " pane (offset)",
    drawtype = "nodebox",
    tiles = {
      texture
    },
    wield_image = texture,
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    is_ground_content = false,
    node_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, 0.96875, 0.5, 0.5, 1.03125}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, 0.75, 0.5, 0.5, 1.25}},
    },
    groups = {
      cracky = 3,
      oddly_breakable_by_hand = 3,
      not_blocking_trains = 1
    },
    use_texture_alpha = "blend",
    sounds = scifi_nodes.node_sound_glass_defaults()
  })

  -- slope pane
  minetest.register_node(nodename_slope, {
    description = base_decription .. " pane (slope)",
		sunlight_propagates = true,
		drawtype = "mesh",
		mesh = "scifi_nodes_slope_simple.obj",
		tiles = {
      texture
    },
    paramtype = "light",
		paramtype2 = "facedir",
		use_texture_alpha = "blend",
		light_source = 10,
		groups = {
			cracky = 2,
			dig_generic = 3
		},
		selection_box = scifi_nodes.slope_box_simple,
		collision_box = scifi_nodes.slope_box_simple,
		is_ground_content = false,
		sounds = scifi_nodes.node_sound_glass_defaults()
	})
  -- register recipes

  minetest.register_craft({
    output = nodename_single .. " 16",
    recipe = {
      {recipe_ingredient}
    },
  })

  minetest.register_craft({
    output = nodename_slope .. " 16",
    recipe = {
      {"", "", recipe_ingredient},
      {"", recipe_ingredient, ""},
      {recipe_ingredient, "", ""}
    },
  })

  minetest.register_craft({
    output = nodename_double .. " 16",
    recipe = {
      {recipe_ingredient},
      {recipe_ingredient}
    },
  })

  minetest.register_craft({
    output = nodename_offset,
    type = "shapeless",
    recipe = {nodename_single},
  })
end

register("octrng", "Orange", "scifi_nodes_octrng.png")
register("octgrn", "Green", "scifi_nodes_octgrn.png")
register("octbl", "Blue", "scifi_nodes_octbl.png")
register("octppl", "Purple", "scifi_nodes_octppl.png")
register("octwht", "White", "scifi_nodes_octwht.png")
register("glass", "Dark Glass pane", "scifi_nodes_glass.png")
