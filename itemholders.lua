-- Code copied from itemframes mod: https://gitlab.com/VanessaE/homedecor_modpack/tree/master/itemframes

local tmp = {}
screwdriver = screwdriver or {}

minetest.register_entity("scifi_nodes:item",{
	hp_max = 1,
	visual="wielditem",
	visual_size={x = 0.25, y = 0.25},
	collisionbox = {0, 0, 0, 0, 0, 0},
	physical = false,
	textures = {"air"},
	on_activate = function(self, staticdata)
		if tmp.nodename ~= nil and tmp.texture ~= nil then
			self.nodename = tmp.nodename
			tmp.nodename = nil
			self.texture = tmp.texture
			tmp.texture = nil
		else
			if staticdata ~= nil and staticdata ~= "" then
				local data = staticdata:split(';')
				if data and data[1] and data[2] then
					self.nodename = data[1]
					self.texture = data[2]
				end
			end
		end
		if self.texture ~= nil then
			self.object:set_properties({textures = {self.texture}})
		end
		self.object:set_properties({automatic_rotate = 1})
		if self.texture ~= nil and self.nodename ~= nil then
			local entity_pos = vector.round(self.object:get_pos())
			local objs = minetest.get_objects_inside_radius(entity_pos, 0.5)
			for _, obj in ipairs(objs) do
				if obj ~= self.object and
				   obj:get_luaentity() and
				   obj:get_luaentity().name == "scifi_nodes:item" and
				   obj:get_luaentity().nodename == self.nodename and
				   obj:get_properties() and
				   obj:get_properties().textures and
				   obj:get_properties().textures[1] == self.texture then
					minetest.log("action","[scifi_nodes] Removing extra " ..
						self.texture .. " found in " .. self.nodename .. " at " ..
						minetest.pos_to_string(entity_pos))
					self.object:remove()
					break
				end
			end
		end
	end,
	get_staticdata = function(self)
		if self.nodename ~= nil and self.texture ~= nil then
			return self.nodename .. ';' .. self.texture
		end
		return ""
	end,
})

local remove_item = function(pos, node)
	local objs = nil
	if node.name == "scifi_nodes:itemholder" then
		objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y+0.2,z=pos.z}, .5)
	elseif node.name == "scifi_nodes:powered_stand" then
		objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y+0.75,z=pos.z}, .5)
	end
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "scifi_nodes:item" then
				obj:remove()
			end
		end
	end
end

local update_item = function(pos, node)
	remove_item(pos, node)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "scifi_nodes:itemholder" then
			pos.y = pos.y + 0.2
		elseif node.name == "scifi_nodes:powered_stand" then
			pos.y = pos.y + 0.75
		end
		tmp.nodename = node.name
		tmp.texture = ItemStack(meta:get_string("item")):get_name()
		minetest.add_entity(pos,"scifi_nodes:item")
	end
end

local drop_item = function(pos, node)
	local meta = minetest.get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "scifi_nodes:itemholder" then
			minetest.add_item({x=pos.x,y=pos.y+0.2,z=pos.z}, meta:get_string("item"))
		elseif node.name == "scifi_nodes:powered_stand" then
			minetest.add_item({x=pos.x,y=pos.y+0.75,z=pos.z}, meta:get_string("item"))
		end
		meta:set_string("item","")
	end
	remove_item(pos, node)
end

minetest.register_node("scifi_nodes:powered_stand", {
	description = "powered stand",
	tiles = {
		"scifi_nodes_pwrstnd_top.png",
		"scifi_nodes_pwrstnd_top.png",
		"scifi_nodes_pwrstnd_side.png",
		"scifi_nodes_pwrstnd_side.png",
		"scifi_nodes_pwrstnd_side.png",
		"scifi_nodes_pwrstnd_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, 0.25, -0.3125, 0.375, 0.4375, 0.3125}, -- NodeBox1
			{-0.3125, 0.25, -0.375, 0.3125, 0.4375, 0.375}, -- NodeBox2
			{-0.3125, 0.4375, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.5, -0.5, -0.125, 0.5, 0.125, 0.125}, -- NodeBox4
			{-0.125, -0.5, -0.5, 0.125, 0.125, 0.5}, -- NodeBox5
			{-0.4375, 0.125, -0.125, 0.4375, 0.25, 0.125}, -- NodeBox6
			{-0.125, 0.125, -0.4375, 0.125, 0.25, 0.4375}, -- NodeBox7
			{-0.3125, -0.5, -0.375, 0.3125, 0.0625, 0.3125}, -- NodeBox8
			{-0.25, 0.0625, -0.3125, 0.25, 0.125, 0.3125}, -- NodeBox9
		}
	},
	groups = {cracky=1, oddly_breakable_by_hand=1},
	on_rotate = screwdriver.disallow,
	after_place_node = function(pos, placer, itemstack)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner",placer:get_player_name())
		meta:set_string("infotext", "Powered stand (owned by " .. meta:get_string("owner") .. ")")
	end,
	on_rightclick = function(pos, node, clicker, itemstack)
		if not itemstack then return end
		local meta = minetest.get_meta(pos)
		local name = clicker and clicker:get_player_name()
		if name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass") then
			drop_item(pos,node)
			local s = itemstack:take_item()
			meta:set_string("item",s:to_string())
			update_item(pos,node)
		end
		return itemstack
	end,
	on_punch = function(pos,node,puncher)
		local meta = minetest.get_meta(pos)
		local name = puncher and puncher:get_player_name()
		if name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass") then
			drop_item(pos,node)
		end
	end,
	can_dig = function(pos,player)
		if not player then return end
		local name = player and player:get_player_name()
		local meta = minetest.get_meta(pos)
		return name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass")
	end,
	on_destruct = function(pos)
		local meta = minetest.get_meta(pos)
		local node = minetest.get_node(pos)
		if meta:get_string("item") ~= "" then
			drop_item(pos, node)
		end
	end,
})

minetest.register_node("scifi_nodes:itemholder", {
	description = "item holder",
	tiles = {
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png",
		"scifi_nodes_box_top.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.25, 0.3125}, -- NodeBox1
			{-0.0625, -0.5, 0.1875, 0.0625, -0.0625, 0.25}, -- NodeBox2
			{-0.0625, -0.5, -0.25, 0.0625, -0.0625, -0.1875}, -- NodeBox3
			{0.1875, -0.5, -0.0625, 0.25, -0.0625, 0.0625}, -- NodeBox4
			{-0.25, -0.5, -0.0625, -0.1875, -0.0625, 0.0625}, -- NodeBox5
		}
	},
	groups = {cracky=1},
	on_rotate = screwdriver.disallow,
	after_place_node = function(pos, placer, itemstack)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner",placer:get_player_name())
		meta:set_string("infotext", "Item holder (owned by " .. meta:get_string("owner") .. ")")
	end,
	on_rightclick = function(pos, node, clicker, itemstack)
		if not itemstack then return end
		local meta = minetest.get_meta(pos)
		local name = clicker and clicker:get_player_name()
		if name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass") then
			drop_item(pos,node)
			local s = itemstack:take_item()
			meta:set_string("item",s:to_string())
			update_item(pos,node)
		end
		return itemstack
	end,
	on_punch = function(pos,node,puncher)
		local meta = minetest.get_meta(pos)
		local name = puncher and puncher:get_player_name()
		if name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass") then
			drop_item(pos,node)
		end
	end,
	can_dig = function(pos,player)
		if not player then return end
		local name = player and player:get_player_name()
		local meta = minetest.get_meta(pos)
		return name == meta:get_string("owner") or minetest.check_player_privs(name, "protection_bypass")
	end,
	on_destruct = function(pos)
		local meta = minetest.get_meta(pos)
		local node = minetest.get_node(pos)
		if meta:get_string("item") ~= "" then
			drop_item(pos, node)
		end
	end,
})

-- automatically restore entities lost from powered_stands/itemholders
-- due to /clearobjects or similar
minetest.register_lbm({
	label = "Maintain powered_stand and itemholder entities",
	name = "scifi_nodes:maintain_entities",
	nodenames = {"scifi_nodes:powered_stand", "scifi_nodes:itemholder"},
	run_at_every_load = true,
	action = function(pos, node)
		minetest.after(0,
			function(pos, node)
				local meta = minetest.get_meta(pos)
				local itemstring = meta:get_string("item")
				if itemstring ~= "" then
					local entity_pos = pos
					if node.name == "scifi_nodes:itemholder" then
						entity_pos = {x=pos.x,y=pos.y+0.2,z=pos.z}
					elseif node.name == "scifi_nodes:powered_stand" then
						entity_pos = {x=pos.x,y=pos.y+0.75,z=pos.z}
					end
					local objs = minetest.get_objects_inside_radius(entity_pos, 0.5)
					if #objs == 0 then
						minetest.log("action","[scifi_nodes] Replacing missing " ..
							itemstring .. " in " .. node.name .. " at " ..
							minetest.pos_to_string(pos))
						update_item(pos, node)
					end
				end
			end,
		pos, node)
	end
})

-- stop mesecon pistons from pushing powered_stands and itemholders
if minetest.get_modpath("mesecons_mvps") then
	mesecon.register_mvps_stopper("scifi_nodes:powered_stand")
	mesecon.register_mvps_stopper("scifi_nodes:itemholder")
end
