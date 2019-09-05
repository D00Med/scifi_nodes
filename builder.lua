

--the builder node

local builder_formspec =
	"size[8,9]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"list[current_name;input;1,1;1,1;]" ..
	"list[current_name;output;3,0;4,3;]" ..
	"list[current_player;main;0,4.85;8,1;]" ..
	"list[current_player;main;0,6.08;8,3;8]" ..
	"listring[current_name;input]" ..
	"listring[current_name;output]" ..
	"listring[current_player;main]" ..
	default.get_hotbar_bg(0,4.85)

local input_items = {
	{
		"default:steel_ingot 1",
		"scifi_nodes:black",
		"scifi_nodes:blue",
		"scifi_nodes:rough",
		"scifi_nodes:rust",
		"scifi_nodes:white",
		"scifi_nodes:grey",
		"scifi_nodes:pplwll",
		"scifi_nodes:greenmetal",
		"scifi_nodes:wall",
		"scifi_nodes:blue_square",
		"scifi_nodes:mesh",
		"scifi_nodes:greytile"
	}
}

minetest.register_node("scifi_nodes:builder", {
	description = "Sci-fi Node Builder",
	tiles = {
		"scifi_nodes_builder.png",
		"scifi_nodes_builder.png",
		"scifi_nodes_builder_side.png",
		"scifi_nodes_builder_side.png",
		"scifi_nodes_builder_side.png",
		"scifi_nodes_builder_front.png"
	},
	on_construct = function(pos)
		--local meta = minetest.get_meta(pos)
		--meta:set_string("infotext", "Node Builder (currently does nothing)")

		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", builder_formspec)
		meta:set_string("infotext", "Node Builder")
		local inv = meta:get_inventory()
		inv:set_size("output", 4 * 3)
		inv:set_size("input", 1 * 1)
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local player_inv = player:get_inventory()
		if listname == "output" then
			player_inv:add_item("main", stack)
			inv:set_stack("output", index, "")
		end
		if listname == "input" then
			for _, row in ipairs(input_items) do
				local item = row[1]
				if inv:contains_item("input", item) then
					inv:set_stack("output", 1, row[2])
					inv:set_stack("output", 2, row[3])
					inv:set_stack("output", 3, row[4])
					inv:set_stack("output", 4, row[5])
					inv:set_stack("output", 5, row[6])
					inv:set_stack("output", 6, row[7])
					inv:set_stack("output", 7, row[8])
					inv:set_stack("output", 8, row[9])
					inv:set_stack("output", 9, row[10])
					inv:set_stack("output", 10, row[11])
					inv:set_stack("output", 11, row[12])
					inv:set_stack("output", 12, row[13])
				end
			end
		end
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
			local istack = inv:get_stack("input", 1)
			local stack_name = istack:get_name()
			inv:remove_item("input", stack_name.." 1")

			inv:set_stack("output", 1, "")
			inv:set_stack("output", 2, "")
			inv:set_stack("output", 3, "")
			inv:set_stack("output", 4, "")
			inv:set_stack("output", 5, "")
			inv:set_stack("output", 6, "")
			inv:set_stack("output", 7, "")
			inv:set_stack("output", 8, "")
			inv:set_stack("output", 9, "")
			inv:set_stack("output", 10, "")
			inv:set_stack("output", 11, "")
			inv:set_stack("output", 12, "")
	end,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1, oddly_breakable_by_hand=1}
})
