-- sound definitions with fallback to empty sound-table

function scifi_nodes.node_sound_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_wood_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_wood_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_glass_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_glass_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_metal_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_metal_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_stone_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_stone_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_dirt_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_dirt_defaults(param)
    end
    return {}
end

function scifi_nodes.node_sound_plant_defaults(param)
    if minetest.get_modpath("default") then
        -- default game
        return default.node_sound_leaves_defaults(param)
    end
    return {}
end
