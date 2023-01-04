
minetest.register_node("scifi_nodes:whiteoct_colored", {
    description = "white octagon",
    tiles = {"scifi_nodes_super_white.png"},
    overlay_tiles = {{ name = "scifi_nodes_whiteoct_overlay.png", color = "white" }},
    groups = {
        cracky = 1,
        ud_param2_colorable = 1,
        not_in_creative_inventory = 1
    },
    palette = "unifieddyes_palette_extended.png",
    paramtype = "light",
    paramtype2 = "color",
    sounds = scifi_nodes.node_sound_glass_defaults(),
    on_construct = unifieddyes.on_construct,
    on_dig = unifieddyes.on_dig
})

minetest.register_node("scifi_nodes:whitetile_colored", {
    description = "white tile2",
    tiles = {"scifi_nodes_whitetile.png"},
    overlay_tiles = {{ name = "scifi_nodes_whitetile_overlay.png", color = "white" }},
    groups = {
        cracky = 1,
        ud_param2_colorable = 1,
        not_in_creative_inventory = 1
    },
    palette = "unifieddyes_palette_extended.png",
    paramtype = "light",
    paramtype2 = "color",
    sounds = scifi_nodes.node_sound_glass_defaults(),
    on_construct = unifieddyes.on_construct,
    on_dig = unifieddyes.on_dig
})

minetest.register_node("scifi_nodes:white_colored", {
    description = "plastic wall",
    tiles = {"scifi_nodes_white.png"},
    -- NOTE: colorless overlay not enabled for the plastic wall node, doesn't look that natural
    -- overlay_tiles = {{ name = "scifi_nodes_white_overlay.png", color = "white" }},
    groups = {
        cracky = 1,
        ud_param2_colorable = 1,
        not_in_creative_inventory = 1
    },
    palette = "unifieddyes_palette_extended.png",
    paramtype = "light",
    paramtype2 = "color",
    sounds = scifi_nodes.node_sound_glass_defaults(),
    on_construct = unifieddyes.on_construct,
    on_dig = unifieddyes.on_dig
})

minetest.register_node("scifi_nodes:white2_colored", {
    description = "plastic",
    tiles = {"scifi_nodes_white2.png"},
    groups = {
        cracky = 1,
        ud_param2_colorable = 1,
        not_in_creative_inventory = 1
    },
    palette = "unifieddyes_palette_extended.png",
    paramtype = "light",
    paramtype2 = "color",
    sounds = scifi_nodes.node_sound_glass_defaults(),
    on_construct = unifieddyes.on_construct,
    on_dig = unifieddyes.on_dig
})