local has_default = minetest.get_modpath("default")

--chest code from default(Copyright (C) 2012 celeron55, Perttu Ahola <celeron55@gmail.com>)
local chest_formspec =
	"size[8,9]" ..
	(has_default and default.gui_bg or "") ..
	(has_default and default.gui_bg_img or "") ..
	(has_default and default.gui_slots or "") ..
	"list[current_name;main;0,0.3;8,4;]" ..
	"list[current_player;main;0,4.85;8,1;]" ..
	"list[current_player;main;0,6.08;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" ..
	(has_default and default.get_hotbar_bg(0,4.85) or "")

-- Helper functions
local function drop_chest_stuff()
	return function(pos, _, oldmetadata)
		local meta = minetest.get_meta(pos)
		meta:from_table(oldmetadata)
		local inv = meta:get_inventory()
		for i = 1, inv:get_size("main") do
			local stack = inv:get_stack("main", i)
			if not stack:is_empty() then
				local p = {
					x = pos.x + math.random(0, 5)/5 - 0.5,
					y = pos.y,
					z = pos.z + math.random(0, 5)/5 - 0.5}
				minetest.add_item(p, stack)
			end
		end
	end
end

local function register_chest(name, custom_def)
	assert(custom_def.description)
	assert(custom_def.tiles)

	local def = {
		paramtype2 = "facedir",
		legacy_facedir_simple = true,
		is_ground_content = false,
		sounds = scifi_nodes.node_sound_wood_defaults(),
		after_dig_node = drop_chest_stuff(),
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", chest_formspec)
			meta:set_string("infotext", custom_def.description)
			local inv = meta:get_inventory()
			inv:set_size("main", 8 * 4)
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index,
				to_list, to_index, count, player)
			minetest.log("action", player:get_player_name() ..
				" moves stuff in chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" moves stuff to chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				" takes stuff from chest at " .. minetest.pos_to_string(pos))
		end
	}

	for k, v in pairs(custom_def) do
		def[k] = v
	end

	minetest.register_node(name, def)
end


register_chest("scifi_nodes:crate", {
	description = "Crate",
	tiles = {"scifi_nodes_crate.png"},
	groups = {
		cracky = 1,
		oddly_breakable_by_hand = 2,
		fuel = 8
	}
})

register_chest("scifi_nodes:box", {
	description = "Storage box",
	tiles = {
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_box.png",
		"scifi_nodes_box.png",
		"scifi_nodes_box.png",
		"scifi_nodes_box.png"
	},
	groups = {
		cracky = 1
	}
})
