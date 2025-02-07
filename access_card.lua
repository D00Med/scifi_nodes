
minetest.register_craftitem("scifi_nodes:access_card", {
	description = "Access card",
    inventory_image = "scifi_nodes_access_card.png",
    stack_max = 1,
    on_use = function(_, player)
    end
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

local function register_copy_craft(nodename)
    -- copy recipe
    minetest.register_craft({
        output = nodename,
        recipe = {
            {nodename, "scifi_nodes:white_pad", ""},
            {"", "", ""},
            {"", "", ""}
        }
    })

    minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
        if itemstack:get_name() ~= nodename then
            return
        end

        local original
        local index
        for i = 1, #old_craft_grid do
            if old_craft_grid[i]:get_name() == nodename then
                original = old_craft_grid[i]
                index = i
                break
            end
        end
        if not original then
            return
        end
        local copymeta = original:get_meta():to_table()
        itemstack:get_meta():from_table(copymeta)
        craft_inv:set_stack("craft", index, original)
    end)
end

register_copy_craft("scifi_nodes:access_card")


if minetest.get_modpath("unifieddyes") then
    -- add colored cards

    minetest.register_craftitem("scifi_nodes:access_card_colored", {
        description = "Access card",
        groups = {
            ud_param2_colorable = 1,
            not_in_creative_inventory = 1
        },
        inventory_image = "scifi_nodes_access_card.png",
        palette = "unifieddyes_palette_extended.png",
        stack_max = 1,
        paramtype2 = "color",
        on_use = function(_, player)
        end
    })

    register_copy_craft("scifi_nodes:access_card_colored")

    unifieddyes.register_color_craft({
        output = "scifi_nodes:access_card_colored",
        palette = "extended",
        neutral_node = "scifi_nodes:access_card",
        recipe = {
            "NEUTRAL_NODE",
            "MAIN_DYE"
        },
        type = "shapeless"
    })
end