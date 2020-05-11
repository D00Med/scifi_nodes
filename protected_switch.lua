
--------------
-- Switches --
--------------

local has_mesecons = minetest.get_modpath("mesecons")

local function toggle_switch(pos, _, player)
	local node = minetest.get_node(pos)
	local name = node.name
	if name == "scifi_nodes:protected_switch_on" then
		-- toggle off
		minetest.sound_play("scifi_nodes_switch", {max_hear_distance = 8, pos = pos})
		minetest.set_node(pos, {name = "scifi_nodes:protected_switch_off", param2 = node.param2})
		mesecon.receptor_off(pos, scifi_nodes.get_switch_rules(node.param2))
	elseif name == "scifi_nodes:protected_switch_off" then
		-- toggle on, check protection first
		if player and minetest.is_protected(pos, player:get_player_name()) then
			-- position is protected, abort
			minetest.sound_play("scifi_nodes_scanner_refused", {max_hear_distance = 8, pos = pos})
			return
		end
		minetest.sound_play("scifi_nodes_switch", {max_hear_distance = 8, pos = pos})
		minetest.set_node(pos, {name = "scifi_nodes:protected_switch_on", param2 = node.param2})
		mesecon.receptor_on(pos, scifi_nodes.get_switch_rules(node.param2))
		minetest.get_node_timer(pos):start(2)
	end
end

minetest.register_node("scifi_nodes:protected_switch_on", {
	description = "Protected wall switch",
	sunlight_propagates = true,
	buildable_to = false,
	tiles = {"scifi_nodes_switch_on.png",},
	inventory_image = "scifi_nodes_switch_on.png",
	wield_image = "scifi_nodes_switch_on.png",
	drawtype = "signlike",
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 5,
	groups = {
		cracky=1,
		oddly_breakable_by_hand = 1,
		not_in_creative_inventory = 1,
		mesecon_needs_receiver = 1
	},
	mesecons = {
		receptor = {
			state = (has_mesecons and mesecon.state.on)
		}
	},
	sounds = default.node_sound_glass_defaults(),
	on_rightclick = (has_mesecons and toggle_switch),
	on_timer = (has_mesecons and toggle_switch)
})

minetest.register_node("scifi_nodes:protected_switch_off", {
	description = "Protected wall switch",
	tiles = {"scifi_nodes_switch_off.png",},
	inventory_image = "scifi_nodes_switch_on.png",
	wield_image = "scifi_nodes_switch_on.png",
	drawtype = "signlike",
	sunlight_propagates = true,
	buildable_to = false,
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {
		cracky = 1,
		oddly_breakable_by_hand = 1,
		mesecon_needs_receiver = 1
	},
	mesecons = {
		receptor = {
			state = (has_mesecons and mesecon.state.off)
		}
	},
	sounds = default.node_sound_glass_defaults(),
	on_rightclick = (has_mesecons and toggle_switch)
})

minetest.register_craft({
	output = "scifi_nodes:protected_switch_off 2",
	type = "shapeless",
	recipe = {"scifi_nodes:switch_off", "default:steel_ingot"}
})
