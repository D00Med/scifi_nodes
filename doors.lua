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


-- This table now uses named parameters and more convenient variables names
local doors = {
	-- DOOM door {closed, closed top, opened, opened top, texture number, main ingredient, sound}
	{base_name = "Doom", tex_number = "1", base_ingredient =  "doors:door_obsidian_glass", sound = "scifi_nodes_door_mechanic"},
	-- Black door
	{base_name = "black", tex_number = "2", base_ingredient = "doors:door_steel", sound = "scifi_nodes_door_mechanic"},
	-- White door
	{base_name = "white", tex_number = "3", base_ingredient = "doors:door_glass", sound = "scifi_nodes_door_normal"},
	-- Green door
	{base_name = "green", tex_number = "4", base_ingredient = "doors:door_wood", sound = "scifi_nodes_door_mechanic"},
}


-- Maybe useful later with mesecons_doors.meseconify_door()
function get_doors_list()
	return doors
end


for i in ipairs (doors) do

local closed = "scifi_nodes:"..doors[i].base_name.."_door_closed"
local closed_top = "scifi_nodes:"..doors[i].base_name.."_door_closed_top"
local opened = "scifi_nodes:"..doors[i].base_name.."_door_opened"
local opened_top = "scifi_nodes:"..doors[i].base_name.."_door_opened_top"
local tex_number = doors[i].tex_number
local base_ingredient = doors[i].base_ingredient
local sound = doors[i].sound

minetest.register_craft({
    output = closed .. " 2",
    recipe = {
        {"scifi_nodes:white2", base_ingredient, "scifi_nodes:white2"},
        {"scifi_nodes:black", base_ingredient, "scifi_nodes:black"}
    }
})


function onplace(itemstack, placer, pointed_thing)
	local pos1 = pointed_thing.above
	local pos2 = {x=pos1.x, y=pos1.y, z=pos1.z}
	      pos2.y = pos2.y+1
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
			local p2 = minetest.dir_to_facedir(placer:get_look_dir())
			local pt3 = {x=pt.x, y=pt.y, z=pt.z}
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
			if minetest.get_node(pt3).name == closed then
				minetest.set_node(pt, {name=closed, param2=p4})
				minetest.set_node(pt2, {name=closed_top, param2=p4})
			else
				minetest.set_node(pt, {name=closed, param2=p2})
				minetest.set_node(pt2, {name=closed_top, param2=p2})
			end
	itemstack:take_item(1)

	return itemstack;
end

function afterdestruct(pos, oldnode)
	   minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
end

function rightclick(pos, node, player, itemstack, pointed_thing)
	-- play sound
	minetest.sound_play(sound,{
		max_hear_distance = 16,
		pos = pos,
		gain = 1.0
	})

	local timer = minetest.get_node_timer(pos)
	local a = minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1})
	local b = minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1})
	local c = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z})
	local d = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z})
	local e = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z-1})
	local f = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z-1})
	local g = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z+1})
	local h = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z+1})
	
	
		minetest.set_node(pos, {name=opened, param2=node.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name=opened_top, param2=node.param2})

	     if a.name == closed then
		minetest.set_node({x=pos.x, y=pos.y, z=pos.z-1}, {name=opened, param2=a.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z-1}, {name=opened_top, param2=a.param2})
		end
	     if b.name == closed then
		minetest.set_node({x=pos.x, y=pos.y, z=pos.z+1}, {name=opened, param2=b.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z+1}, {name=opened_top, param2=b.param2})
		end
	     if c.name == closed then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z}, {name=opened, param2=c.param2})
		minetest.set_node({x=pos.x+1,y=pos.y+1,z=pos.z}, {name=opened_top, param2=c.param2})
		end
	     if d.name == closed then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z}, {name=opened, param2=d.param2})
		minetest.set_node({x=pos.x-1,y=pos.y+1,z=pos.z}, {name=opened_top, param2=d.param2})
		end
	     if e.name == closed then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z-1}, {name=opened, param2=e.param2})
		minetest.set_node({x=pos.x+1, y=pos.y+1, z=pos.z-1}, {name=opened_top, param2=e.param2})
		end
	     if f.name == closed then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z-1}, {name=opened, param2=f.param2})
		minetest.set_node({x=pos.x-1, y=pos.y+1, z=pos.z-1}, {name=opened_top, param2=f.param2})
		end
	     if g.name == closed then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z+1}, {name=opened, param2=g.param2})
		minetest.set_node({x=pos.x+1, y=pos.y+1, z=pos.z+1}, {name=opened_top, param2=g.param2})
		end
	     if h.name == closed then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z+1}, {name=opened, param2=h.param2})
		minetest.set_node({x=pos.x-1, y=pos.y+1, z=pos.z+1}, {name=opened_top, param2=h.param2})
		end

	   timer:start(3)

end

function afterplace(pos, placer, itemstack, pointed_thing)
	   minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name=opened_top,param2=nodeu.param2})
end

function ontimer(pos, elapsed)
	-- play sound
	minetest.sound_play(sound,{
		max_hear_distance = 16,
		pos = pos,
		gain = 1.0
	})

	local node = minetest.get_node(pos)
	local a = minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1})
	local b = minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1})
	local c = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z})
	local d = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z})
	local e = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z-1})
	local f = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z-1})
	local g = minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z+1})
	local h = minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z+1})
	
	
		minetest.set_node(pos, {name=closed, param2=node.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z}, {name=closed_top, param2=node.param2})

	     if a.name == opened then
		minetest.set_node({x=pos.x, y=pos.y, z=pos.z-1}, {name=closed, param2=a.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z-1}, {name=closed_top, param2=a.param2})
		end
	     if b.name == opened then
		minetest.set_node({x=pos.x, y=pos.y, z=pos.z+1}, {name=closed, param2=b.param2})
		minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z+1}, {name=closed_top, param2=b.param2})
		end
	     if c.name == opened then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z}, {name=closed, param2=c.param2})
		minetest.set_node({x=pos.x+1,y=pos.y+1,z=pos.z}, {name=closed_top, param2=c.param2})
		end
	     if d.name == opened then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z}, {name=closed, param2=d.param2})
		minetest.set_node({x=pos.x-1,y=pos.y+1,z=pos.z}, {name=closed_top, param2=d.param2})
		end
	     if e.name == opened then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z-1}, {name=closed, param2=e.param2})
		minetest.set_node({x=pos.x+1, y=pos.y+1, z=pos.z-1}, {name=closed_top, param2=e.param2})
		end
	     if f.name == opened then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z-1}, {name=closed, param2=f.param2})
		minetest.set_node({x=pos.x-1, y=pos.y+1, z=pos.z-1}, {name=closed_top, param2=f.param2})
		end
	     if g.name == opened then
		minetest.set_node({x=pos.x+1, y=pos.y, z=pos.z+1}, {name=closed, param2=g.param2})
		minetest.set_node({x=pos.x+1, y=pos.y+1, z=pos.z+1}, {name=closed_top, param2=g.param2})
		end
	     if h.name == opened then
		minetest.set_node({x=pos.x-1, y=pos.y, z=pos.z+1}, {name=closed, param2=h.param2})
		minetest.set_node({x=pos.x-1, y=pos.y+1, z=pos.z+1}, {name=closed_top, param2=h.param2})
		end

end

minetest.register_node(closed, {
	description = doors[i].base_name.." sliding door",
	inventory_image = "scifi_nodes_door"..tex_number.."a_inv.png",
	wield_image = "scifi_nodes_door"..tex_number.."a_inv.png",
	tiles = {
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_rbottom.png",
		"scifi_nodes_door"..tex_number.."a_bottom.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 3},
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

on_place = onplace,

after_destruct = afterdestruct,

on_rightclick = rightclick,
})

minetest.register_node(closed_top, {
	tiles = {
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_rtop.png",
		"scifi_nodes_door"..tex_number.."a_top.png"
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
})

minetest.register_node(opened, {
	tiles = {
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_rbottom0.png",
		"scifi_nodes_door"..tex_number.."a_bottom0.png"
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
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_edge.png",
		"scifi_nodes_door"..tex_number.."a_rtopo.png",
		"scifi_nodes_door"..tex_number.."a_topo.png"
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
})
end
