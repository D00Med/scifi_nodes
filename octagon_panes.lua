
local function register(basename, description, texture)
  local nodename_single = "scifi_nodes:" .. basename .. "_pane"
  local nodename_double = "scifi_nodes:" .. basename .. "_pane_double"
  local nodename_offset = "scifi_nodes:" .. basename .. "_pane_offset"
  local recipe_ingredient = "scifi_nodes:" .. basename

  -- single height
  minetest.register_node(nodename_single, {
    description = description,
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
      fixed = {{-0.5, -0.5, 0, 0.5, 0.5, 0}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.25, 0.5, 0.5, 0.25}},
    },
    groups = {cracky = 3, oddly_breakable_by_hand = 3},
    use_texture_alpha = true,
    sounds = default.node_sound_glass_defaults()
  })

  -- double height
  minetest.register_node(nodename_double, {
    description = description,
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
      fixed = {{-0.5, -0.5, 0, 0.5, 1.5, 0}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, -0.25, 0.5, 1.5, 0.25}},
    },
    groups = {cracky = 3, oddly_breakable_by_hand = 3},
    use_texture_alpha = true,
    sounds = default.node_sound_glass_defaults()
  })

  -- single height with offset
  minetest.register_node(nodename_offset, {
    description = description,
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
      fixed = {{-0.5, -0.5, 1, 0.5, 0.5, 1}},
    },
    selection_box = {
      type = "fixed",
      fixed = {{-0.5, -0.5, 0.75, 0.5, 0.5, 1.25}},
    },
    groups = {cracky = 3, oddly_breakable_by_hand = 3},
    use_texture_alpha = true,
    sounds = default.node_sound_glass_defaults()
  })

  -- register recipes

  minetest.register_craft({
    output = nodename_single .. " 16",
    recipe = {
      {recipe_ingredient}
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

register("octrng", "Orange Octagon Glass pane", "scifi_nodes_octrng.png")
register("octgrn", "Green Octagon Glass pane", "scifi_nodes_octgrn.png")
register("octbl", "Blue Octagon Glass pane", "scifi_nodes_octbl.png")
register("octppl", "Purple Octagon Glass pane", "scifi_nodes_octppl.png")
register("glass", "Dark Glass pane", "scifi_nodes_glass.png")
