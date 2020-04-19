-- mydoors mod by don
-- DO WHAT YOU WANT TO PUBLIC LICENSE
-- or abbreviated DWYWPL

-- December 2nd 2015
-- License Copyright (C) 2015 Michael Tomaino (PlatinumArts@gmail.com)
-- www.sandboxgamemaker.com/DWYWPL/

-- DO WHAT YOU WANT TO PUBLIC LICENSE
-- TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

-- 1. You are allowed to do whatever you want to with what content is using this license.
-- 2. This content is provided 'as-is', without any express or implied warranty. In no event
-- will the authors be held liable for any damages arising from the use of this content.


-- Retrieving mod settings
scifi_nodes.doors_open_with_mesecon_only = minetest.settings:get_bool("scifi_nodes.doors_open_with_mesecon_only", false)

-- Some aliases to deal with old namming policy --
minetest.register_alias("scifi_nodes:door1a","scifi_nodes:Doom_door_closed")
minetest.register_alias("scifi_nodes:door1b","scifi_nodes:Doom_door_closed_top")
minetest.register_alias("scifi_nodes:door1c","scifi_nodes:Doom_door_opened")
minetest.register_alias("scifi_nodes:door1d","scifi_nodes:Doom_door_opened_top")

minetest.register_alias("scifi_nodes:door2a","scifi_nodes:black_door_closed")
minetest.register_alias("scifi_nodes:door2b","scifi_nodes:black_door_closed_top")
minetest.register_alias("scifi_nodes:door2c","scifi_nodes:black_door_opened")
minetest.register_alias("scifi_nodes:door2d","scifi_nodes:black_door_opened_top")

minetest.register_alias("scifi_nodes:door3a","scifi_nodes:white_door_closed")
minetest.register_alias("scifi_nodes:door3b","scifi_nodes:white_door_closed_top")
minetest.register_alias("scifi_nodes:door3c","scifi_nodes:white_door_opened")
minetest.register_alias("scifi_nodes:door3d","scifi_nodes:white_door_opened_top")

minetest.register_alias("scifi_nodes:door4a","scifi_nodes:green_door_closed")
minetest.register_alias("scifi_nodes:door4b","scifi_nodes:green_door_closed_top")
minetest.register_alias("scifi_nodes:door4c","scifi_nodes:green_door_opened")
minetest.register_alias("scifi_nodes:door4d","scifi_nodes:green_door_opened_top")

-- This table now uses named parameters and more convenient variables names
local doors = {
	{base_name = "Doom", base_ingredient =  "doors:door_obsidian_glass", sound = "scifi_nodes_door_normal"},
	{base_name = "black", base_ingredient = "doors:door_steel", sound = "scifi_nodes_door_normal"},
	{base_name = "white", base_ingredient = "doors:door_glass", sound = "scifi_nodes_door_normal"},
	{base_name = "green", base_ingredient = "doors:door_wood", sound = "scifi_nodes_door_normal"},
	{base_name = "blue", base_ingredient = "default:steelblock", sound = "scifi_nodes_door_normal"}
}

for _, current_door in ipairs(doors) do

	local closed = "scifi_nodes:"..current_door.base_name.."_door_closed"
	local closed_top = "scifi_nodes:"..current_door.base_name.."_door_closed_top"
	local opened = "scifi_nodes:"..current_door.base_name.."_door_opened"
	local opened_top = "scifi_nodes:"..current_door.base_name.."_door_opened_top"
	local base_name = current_door.base_name
	local base_ingredient = current_door.base_ingredient
	local sound = current_door.sound

	minetest.register_craft({
		output = closed .. " 2",
		recipe = {
			{"scifi_nodes:white2", base_ingredient, "scifi_nodes:white2"},
			{"scifi_nodes:black", base_ingredient, "scifi_nodes:black"}
		}
	})


	local function onplace(itemstack, placer, pointed_thing)
		-- Is there room enough ?
		local pos1 = pointed_thing.above
		local pos2 = {x=pos1.x, y=pos1.y, z=pos1.z}
			  pos2.y = pos2.y+1 -- 2 nodes above

		if
		not minetest.registered_nodes[minetest.get_node(pos1).name].buildable_to or
		not minetest.registered_nodes[minetest.get_node(pos2).name].buildable_to or
		not placer or
		not placer:is_player() or
		minetest.is_protected(pos1, placer:get_player_name()) or
		minetest.is_protected(pos2, placer:get_player_name()) then
			return
		end

		local pt = pointed_thing.above
		local pt2 = {x=pt.x, y=pt.y, z=pt.z}
		pt2.y = pt2.y+1
		-- Player look dir is converted to node rotation ?
		local p2 = minetest.dir_to_facedir(placer:get_look_dir())
		-- Where to look for another door ?
		local pt3 = {x=pt.x, y=pt.y, z=pt.z}

		-- Door param2 depends of placer's look dir
		local p4 = 0
		if p2 == 0 then
			pt3.x = pt3.x-1
			p4 = 2
		elseif p2 == 1 then
			pt3.z = pt3.z+1
			p4 = 3
		elseif p2 == 2 then
			pt3.x = pt3.x+1
			p4 = 0
		elseif p2 == 3 then
			pt3.z = pt3.z-1
			p4 = 1
		end

		-- First door of a pair is already there
		if minetest.get_node(pt3).name == closed then
			minetest.set_node(pt, {name=closed, param2=p4,})
			minetest.set_node(pt2, {name=closed_top, param2=p4})
		--	Placed door is the first of a pair
		else
			minetest.set_node(pt, {name=closed, param2=p2,})
			minetest.set_node(pt2, {name=closed_top, param2=p2})
		end

		itemstack:take_item(1)
		return itemstack;
	end

	local function afterdestruct(pos, oldnode)
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
	end

	local function change_adjacent(target, pos, node)
		local target_opposite, target_top
		if target == opened then
			target_top = opened_top
			target_opposite = closed
		else
			target_top = closed_top
			target_opposite = opened
		end

		for offset = -1,1,2 do
			local x = pos.x
			local y = pos.y
			local z = pos.z

			-- match param2=0 or param2=2
			if node.param2 % 2 == 0 then
				x = x + offset
			else
				z = z + offset
			end

			local adjacent = minetest.get_node({x=x, y=y, z=z})
			if adjacent.name == target_opposite then
				minetest.set_node({x=x, y=y, z=z}, {name=target, param2 = adjacent.param2})
				minetest.set_node({x=x, y=y+1, z=z}, {name=target_top, param2 = adjacent.param2})
			end
		end

	end

	local function open_door(pos, node, player, itemstack, pointed_thing)
		-- play sound
		minetest.sound_play(sound,{
			max_hear_distance = 16,
			pos = pos,
			gain = 1.0
		})

		local timer = minetest.get_node_timer(pos)

		minetest.set_node(pos, {name=opened, param2=node.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name=opened_top, param2=node.param2})

		change_adjacent(opened, pos, node)

		timer:start(3)
	end

	local function afterplace(pos, placer, itemstack, pointed_thing)
		local node = minetest.get_node(pos)
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name=opened_top,param2=node.param2})
	end

	local function ontimer(pos, elapsed)
		-- play sound
		minetest.sound_play(sound,{
			max_hear_distance = 16,
			pos = pos,
			gain = 1.0
		})

		local node = minetest.get_node(pos)

		minetest.set_node(pos, {name=closed, param2=node.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name=closed_top, param2=node.param2})

		change_adjacent(closed, pos, node)
	end

	local mesecons_doors_rules = {
		-- get signal from pressure plate
		{x=-1, y=0, z=0},
		{x=0,  y=0, z=1},
		{x=0,  y=0, z=-1},
		{x=1,  y=0, z=0},
		-- get signal from wall mounted button
		{x=-1, y=1, z=-1},
		{x=-1, y=1, z=1},
		{x=0, y=1, z=-1},
		{x=0, y=1, z=1},
		{x=1, y=1, z=-1},
		{x=1, y=1, z=1},
		{x=-1, y=1, z=0},
		{x=1, y=1, z=0},
	}

	local mesecons_doors_def = {
		effector = {
			action_on = open_door,
			rules = mesecons_doors_rules
		},
	}

	local function nodig(pos, digger)
		return false
	end

	local doors_rightclick = nil -- Crashes serv if empty table !
	if not scifi_nodes.doors_open_with_mesecon_only then doors_rightclick = open_door end

	minetest.register_node(closed, {
		description = current_door.base_name.." sliding door",
		inventory_image = "scifi_nodes_door_"..base_name.."_inv.png",
		wield_image = "scifi_nodes_door_"..base_name.."_inv.png",
		tiles = {
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_rbottom.png",
			"scifi_nodes_door_"..base_name.."_bottom.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 3, oddly_breakable_by_hand = 1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, 0.5, 0.5, 0.0625}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625}
			}
		},
		mesecons = mesecons_doors_def,
		on_place = onplace,
		after_destruct = afterdestruct,
		on_rightclick = doors_rightclick,
	})

	minetest.register_node(closed_top, {
		tiles = {
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_rtop.png",
			"scifi_nodes_door_"..base_name.."_top.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, 0.5, 0.5, 0.0625}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, 0, 0, 0, 0, 0},
			}
		},
		can_dig = nodig,
	})

	minetest.register_node(opened, {
		tiles = {
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_rbottom0.png",
			"scifi_nodes_door_"..base_name.."_bottom0.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		drop = closed,
		groups = {cracky = 1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, -0.25, 0.5, 0.0625},
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, -0.25, 1.5, 0.0625},
			}
		},
		after_place_node = afterplace,
		after_destruct = afterdestruct,
		on_timer = ontimer,
	})

	minetest.register_node(opened_top, {
		tiles = {
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_edge.png",
			"scifi_nodes_door_"..base_name.."_rtopo.png",
			"scifi_nodes_door_"..base_name.."_topo.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.0625, -0.25, 0.5, 0.0625},
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, 0, 0, 0, 0, 0},
			}
		},
		can_dig = nodig,
	})
end     -- end of doors table browsing
