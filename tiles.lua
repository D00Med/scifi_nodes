for _, color in ipairs({"purple", "greenmetal", "bluemetal", "grey"}) do
    minetest.register_node("scifi_nodes:" .. color .. "_tile", {
        description = color .. " tile",
        groups = {
            cracky = 1
        },
        is_ground_content = false,
        sounds = scifi_nodes.node_sound_metal_defaults(),
        paramtype2 = "facedir",
        use_texture_alpha = "blend",
        tiles = {"scifi_nodes_" .. color .. ".png^scifi_nodes_truchet_tile.png"}
    })
end
