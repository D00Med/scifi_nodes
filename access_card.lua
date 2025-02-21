local FORMSPEC_NAME = "scifi_nodes:access_card_configure"

local function create_id()
    local template = "xxxxxx"
    return string.gsub(template, '[x]', function ()
            return string.format('%x', math.random(0, 0xf))
    end)
end

local function get_door_access_table(meta)
    local str = meta:get_string("access")
    if str == "" then
        -- no config
        return {}
    else
        return minetest.deserialize(str) or {}
    end
end

local function set_door_access_table(meta, at)
    if next(at) then
        meta:set_string("access", minetest.serialize(at))
    else
        meta:set_string("access", "")
    end
end

function scifi_nodes.door_check_access_card(node_pos, itemstack, player)
    local node_meta = minetest.get_meta(node_pos)
    local access_table = get_door_access_table(node_meta)
    if not next(access_table) then
        -- access not restricted
        return true
    end

    if not minetest.is_player(player) then
        -- not a player, restrict access
        return false
    end

    local playername = player:get_player_name()

    if itemstack:get_name() ~= "scifi_nodes:access_card" then
        minetest.chat_send_player(playername, minetest.colorize("#ff0000", "Access denied: no access card detected!"))
        minetest.sound_play("scifi_nodes_scanner_refused", { pos = node_pos, max_hear_distance = 10 })
        return false
    end

    local item_meta = itemstack:get_meta()
    local id = item_meta:get_string("id")
    if id == "" then
        minetest.chat_send_player(playername, minetest.colorize("#ff0000", "Access denied: unconfigured access card"))
        minetest.sound_play("scifi_nodes_scanner_refused", { pos = node_pos, max_hear_distance = 10 })
        return false
    end

    if not access_table[id] then
        minetest.chat_send_player(playername, minetest.colorize("#ff0000", "Access denied: invalid access card"))
        minetest.sound_play("scifi_nodes_scanner_refused", { pos = node_pos, max_hear_distance = 10 })
        return false
    end

    minetest.sound_play("scifi_nodes_scanner_granted", { pos = node_pos, max_hear_distance = 10 })
    return true
end

-- using a card against a door toggles the access to it
local function on_use(itemstack, player, pointed_thing)
    local playername = player:get_player_name()
    local pos = pointed_thing.under

    if not pos then
        -- nothing selected
        return
    end

    if minetest.is_protected(pos, playername) then
        -- protected
        return
    end

    local node = minetest.get_node(pos)
    local node_def = minetest.registered_nodes[node.name]
    if not node_def.groups or not node_def.groups.scifi_nodes_door then
        -- incompatible node
        return
    end

    local item_meta = itemstack:get_meta()
    local card_id = item_meta:get_string("id")
    if card_id == "" then
        minetest.chat_send_player(playername, "Access card is unconfigured")
        return
    end
    local card_name = item_meta:get_string("name")

    local node_meta = minetest.get_meta(pos)
    local access_table = get_door_access_table(node_meta)

    if access_table[card_id] then
        -- remove access
        access_table[card_id] = nil
        minetest.chat_send_player(playername, "Revoked access to card-id '" .. card_id .. "'")
        minetest.sound_play("scifi_nodes_scanner_refused", { pos = pos, max_hear_distance = 10 })
    else
        -- grant access
        access_table[card_id] = card_name
        minetest.chat_send_player(playername, "Granted access to card-id '" .. card_id .. "'")
        minetest.sound_play("scifi_nodes_scanner_granted", { pos = pos, max_hear_distance = 10 })
    end

    local msg = ""
    if next(access_table) then
        msg = msg .. "Current registered cards: "
        for id, name in pairs(access_table) do
            msg = msg .. "Name: '" .. name .. "' ID: '" .. id .. "' / "
        end
    else
        -- access table is empty
        msg = "No access-card left in access-table, door is free to use"
    end
    minetest.chat_send_player(playername, msg)

    -- set new access table
    set_door_access_table(node_meta, access_table)
end

local function configure_access_card(meta, name)
    local id = meta:get_string("id")
    if id == "" then
        -- set new id
        id = create_id()
        meta:set_string("id", id)
    end

    meta:set_string("name", name)
    meta:set_string("description", "Access card '" .. name .. "' (id: '" .. id .. "')")
end

-- right-click with a card for rename/configuration
local function on_secondary_use(itemstack, player, pointed_thing)
    local meta = itemstack:get_meta()
    if meta:get_string("id") == "" then
        -- initial configuration
        configure_access_card(meta, "")
    end
    local name = meta:get_string("name")

    minetest.show_formspec(player:get_player_name(), FORMSPEC_NAME, [[
        size[10,1.4]
        real_coordinates[true]
        field[0.1,0.4;7,0.8;name;Name;]] .. minetest.formspec_escape(name) .. [[]
        button_exit[7.3,0.4;2.5,0.8;save;Save]
    ]])

    return itemstack
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= FORMSPEC_NAME then
        -- wrong formspec
        return false
    end

    if not fields.save and not fields.key_enter_field then
        -- quit
        return true
    end

    local itemstack = player:get_wielded_item()
    if itemstack:get_name() ~= "scifi_nodes:access_card" then
        -- invalid item
        return true
    end

    local meta = itemstack:get_meta()
    configure_access_card(meta, fields.name or "")
    player:set_wielded_item(itemstack)
end)

minetest.register_craftitem("scifi_nodes:access_card", {
    description = "Access card (unconfigured)",
    inventory_image = "scifi_nodes_access_card.png",
    palette = "unifieddyes_palette_extended.png",
    stack_max = 1,
    paramtype2 = "color",
    on_use = on_use,
    on_secondary_use = on_secondary_use,
    groups = {
        ud_param2_colorable = 1
    }
})

-- initial recipe
minetest.register_craft({
    output = "scifi_nodes:access_card",
    recipe = {
        {"scifi_nodes:white2", "", ""},
        {"scifi_nodes:white_pad", "", ""},
        {"scifi_nodes:white2", "", ""}
    }
})

-- copy recipe
minetest.register_craft({
    output = "scifi_nodes:access_card",
    recipe = {
        {"scifi_nodes:access_card", "scifi_nodes:white_pad", ""},
        {"", "", ""},
        {"", "", ""}
    }
})

minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
    if itemstack:get_name() ~= "scifi_nodes:access_card" then
        return
    end

    local original
    local index
    for i = 1, #old_craft_grid do
        if old_craft_grid[i]:get_name() == "scifi_nodes:access_card" then
            original = old_craft_grid[i]
            index = i
            break
        end
    end
    if not original then
        return
    end

    -- copy metadata
    local src_meta = original:get_meta()
    local dst_meta = itemstack:get_meta()
    local copy_fields = {"id", "name", "description"}
    for _, fieldname in ipairs(copy_fields) do
        dst_meta:set_string(fieldname, src_meta:get_string(fieldname))
    end

    if old_craft_grid[2]:get_name() == "scifi_nodes:white_pad" then
        -- keep original item if the copy-recipe is used
        craft_inv:set_stack("craft", index, original)
    end
end)

if minetest.get_modpath("unifieddyes") then
    -- add colored crafts
    unifieddyes.register_color_craft({
        output = "scifi_nodes:access_card",
        palette = "extended",
        neutral_node = "scifi_nodes:access_card",
        recipe = {
            "NEUTRAL_NODE",
            "MAIN_DYE"
        },
        type = "shapeless"
    })

end