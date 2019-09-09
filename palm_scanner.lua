

-----------------------------------------------
--             Palm scanner                  --
-----------------------------------------------
-- /!\ When "overriding" a callback function --
-- re-use all the parameters in same order ! --
-----------------------------------------------

local has_mesecons = minetest.get_modpath("mesecons")

-- after_place_node
-- placer is a player object
local function set_scanner_owner(pos, placer, itemstack, pointed_thing)
	local meta = minetest.get_meta(pos)
	meta:set_string("owner", placer:get_player_name())
end

local function toggle_palm_scanner(pos, node, player, itemstack, pointed_thing)
	-- Some calling function don't send node param, but everybody sends a pos, so :
	if not node then
		node = minetest.get_node(pos)
	end

	if node.name == "scifi_nodes:palm_scanner_off" then
		local meta = minetest.get_meta(pos)
		meta:set_string("clicker", player:get_player_name()) -- need to keep it somewhere
		minetest.swap_node(pos, {name = "scifi_nodes:palm_scanner_checking", param2 = node.param2})
		minetest.sound_play("scifi_nodes_palm_scanner", {max_hear_distance = 8, pos = pos, gain = 1.0})
		minetest.chat_send_player(player:get_player_name(), "Checking : please wait.")
		minetest.get_node_timer(pos):start(2)
	elseif node.name == "scifi_nodes:palm_scanner_checking" then
		minetest.swap_node(pos,{name = "scifi_nodes:palm_scanner_on", param2 = node.param2})
		mesecon.receptor_on(pos, scifi_nodes.get_switch_rules(node.param2))
		minetest.get_node_timer(pos):start(2)
	elseif node.name == "scifi_nodes:palm_scanner_on" then
		minetest.sound_play("scifi_nodes_switch", {max_hear_distance = 8, pos = pos, gain = 1.0})
		minetest.swap_node(pos, {name = "scifi_nodes:palm_scanner_off", param2 = node.param2})
		mesecon.receptor_off (pos, scifi_nodes.get_switch_rules(node.param2))
	end
end

-- palm_scanner_checking.on_timer
local function check_owner(pos, elapsed)
	local meta = minetest.get_meta(pos)
	local owner = meta:get_string("owner")
	local clicker = meta:get_string("clicker")
	local node = minetest.get_node(pos)
	if clicker == owner then
		minetest.sound_play("scifi_nodes_scanner_granted", {max_hear_distance = 8, pos = pos, gain = 1.0})
		minetest.chat_send_player(clicker, "Access granted !")
		toggle_palm_scanner(pos)
	else
		minetest.chat_send_player(clicker, "Access refused !")
		minetest.sound_play("scifi_nodes_scanner_refused", {max_hear_distance = 8, pos = pos, gain = 1.0})
		minetest.swap_node(pos, {name = "scifi_nodes:palm_scanner_off", param2 = node.param2})
		mesecon.receptor_off(pos, scifi_nodes.get_switch_rules(node.param2))
	end
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
	after_place_node = set_scanner_owner,
	on_rightclick = (has_mesecons and toggle_palm_scanner),
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
	sounds = default.node_sound_glass_defaults(),
	on_timer = check_owner,
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
	on_timer = (has_mesecons and toggle_palm_scanner),
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "scifi_nodes:palm_scanner_off 2",
	recipe = {{"mesecons_powerplant:power_plant", "scifi_nodes:grey", ""}}
})
