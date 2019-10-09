

-----------------------------------------------
--             Palm scanner                  --
-----------------------------------------------
-- /!\ When "overriding" a callback function --
-- re-use all the parameters in same order ! --
-----------------------------------------------

local has_mesecons = minetest.get_modpath("mesecons")


local function activate_palm_scanner(pos, node, player)
	local name = player and player:get_player_name()
	name = name or ""

	node.name = "scifi_nodes:palm_scanner_checking"
	minetest.swap_node(pos, node)

	minetest.sound_play("scifi_nodes_palm_scanner", {max_hear_distance = 8, pos = pos, gain = 1.0})
	minetest.chat_send_player(name, "Checking : please wait.")

	-- check protection
	minetest.after(2, function()
		if minetest.is_protected(pos, name or "") then
			-- clicker has no access to area
			minetest.chat_send_player(name, "Access denied !")
			minetest.sound_play("scifi_nodes_scanner_refused", {max_hear_distance = 8, pos = pos, gain = 1.0})

		else
			-- clicker can build here
			minetest.chat_send_player(name, "Access granted !")
			mesecon.receptor_on(pos, scifi_nodes.get_switch_rules(node.param2))

		end

		-- reset state
		minetest.after(1, function()
			node.name = "scifi_nodes:palm_scanner_off"
			minetest.swap_node(pos, node)
			mesecon.receptor_off(pos, scifi_nodes.get_switch_rules(node.param2))
		end)
	end)
end

minetest.register_node("scifi_nodes:palm_scanner_off", {
	description = "Palm scanner",
	tiles = {"scifi_nodes_palm_scanner_off.png",},
	inventory_image = "scifi_nodes_palm_scanner_off.png",
	wield_image = "scifi_nodes_palm_scanner_on.png",
	drawtype = "signlike",
	sunlight_propagates = true,
	buildable_to = false,
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {cracky=1, oddly_breakable_by_hand=1, mesecon_needs_receiver = 1},
	mesecons = {
		receptor = {
			state = (has_mesecons and mesecon.state.off)
		}
	},
	on_rightclick = (has_mesecons and activate_palm_scanner),
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:palm_scanner_checking", {
	description = "Palm scanner",
	tiles = {{
		name = "scifi_nodes_palm_scanner_checking.png",
		animation = {type = "vertical_frames",aspect_w = 16,aspect_h = 16,length = 1.5}
	}},
	drawtype = "signlike",
	sunlight_propagates = true,
	buildable_to = false,
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {cracky=1, oddly_breakable_by_hand=1, not_in_creative_inventory=1, mesecon_needs_receiver = 1},
	drop = "scifi_nodes:palm_scanner_off",
	sounds = default.node_sound_glass_defaults()
})

minetest.register_node("scifi_nodes:palm_scanner_on", {
	description = "Palm scanner",
	sunlight_propagates = true,
	buildable_to = false,
	tiles = {"scifi_nodes_palm_scanner_on.png",},
	inventory_image = "scifi_nodes_palm_scanner_on.png",
	wield_image = "scifi_nodes_palm_scanner_on.png",
	drawtype = "signlike",
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 5,
	groups = {cracky=1, oddly_breakable_by_hand=1, not_in_creative_inventory=1, mesecon_needs_receiver = 1},
	drop = "scifi_nodes:palm_scanner_off",
	mesecons = {
		receptor = {
			state = (has_mesecons and mesecon.state.on)
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "scifi_nodes:palm_scanner_off 2",
	recipe = {{"mesecons_powerplant:power_plant", "scifi_nodes:grey", ""}}
})
