-- sound definitions

function scifi_nodes.node_sound_wood_defaults()
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_wood_defaults()
    end
end

function scifi_nodes.node_sound_glass_defaults()
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_glass_defaults()
    end
end

function scifi_nodes.node_sound_metal_defaults()
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_metal_defaults()
    end
end

function scifi_nodes.node_sound_stone_defaults()
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_stone_defaults()
    end
end