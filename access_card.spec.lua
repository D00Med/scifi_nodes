-- tests for the access-card logic, see mtt.lua

local CARD = "scifi_nodes:access_card"
local DOOR = "scifi_nodes:black_door_closed"

local function new_card(id, name)
	local stack = ItemStack(CARD)
	local meta = stack:get_meta()
	if id then
		meta:set_string("id", id)
		meta:set_string("name", name or "")
	end
	return stack
end

local function get_access(pos)
	local str = core.get_meta(pos):get_string("access")
	return str ~= "" and core.deserialize(str) or {}
end

local function place_door(pos)
	core.set_node(pos, { name = DOOR, param2 = 0 })
	core.get_meta(pos):set_string("access", "")
end

mtt.register_with_area("access card: door check", {
	size = { x = 3, y = 3, z = 3 },
	emerged = true
}, function(pos1, _, callback)
	local player = mtt.join_player("access_card_tester")
	local pos = vector.add(pos1, { x = 1, y = 0, z = 1 })
	place_door(pos)

	-- unrestricted door: everybody (even non-players) may pass
	assert(scifi_nodes.door_check_access_card(pos, ItemStack(""), player))
	assert(scifi_nodes.door_check_access_card(pos, ItemStack(""), nil))

	-- restrict to card "abc123"
	core.get_meta(pos):set_string("access", core.serialize({ abc123 = "Alice" }))

	-- no player (mesecons etc.)
	assert(not scifi_nodes.door_check_access_card(pos, ItemStack(""), nil))
	-- wrong item
	assert(not scifi_nodes.door_check_access_card(pos, ItemStack("default:stone"), player))
	-- unconfigured card
	assert(not scifi_nodes.door_check_access_card(pos, new_card(), player))
	-- foreign card
	assert(not scifi_nodes.door_check_access_card(pos, new_card("ffffff", "Bob"), player))
	-- matching card
	assert(scifi_nodes.door_check_access_card(pos, new_card("abc123", "Alice"), player))

	mtt.leave_player("access_card_tester")
	callback()
end)

mtt.register_with_area("access card: grant and revoke", {
	size = { x = 3, y = 3, z = 3 },
	emerged = true
}, function(pos1, _, callback)
	local player = mtt.join_player("access_card_tester2")
	local pos = vector.add(pos1, { x = 1, y = 0, z = 1 })
	place_door(pos)

	local on_use = core.registered_craftitems[CARD].on_use
	local pt = { type = "node", under = pos, above = vector.add(pos, { x = 0, y = 1, z = 0 }) }

	-- unconfigured card does nothing
	on_use(new_card(), player, pt)
	assert(not next(get_access(pos)))

	-- grant
	local card = new_card("abc123", "Alice")
	on_use(card, player, pt)
	assert(get_access(pos).abc123 == "Alice")

	-- a second card is added next to the first one
	on_use(new_card("def456", "Bob"), player, pt)
	local access = get_access(pos)
	assert(access.abc123 == "Alice")
	assert(access.def456 == "Bob")

	-- same card again revokes
	on_use(card, player, pt)
	access = get_access(pos)
	assert(access.abc123 == nil)
	assert(access.def456 == "Bob")

	-- revoking the last card frees the door again
	on_use(new_card("def456", "Bob"), player, pt)
	assert(core.get_meta(pos):get_string("access") == "")

	-- non-door nodes are not touched
	local other = vector.add(pos1, { x = 0, y = 0, z = 0 })
	core.set_node(other, { name = "air" })
	on_use(card, player, { type = "node", under = other, above = other })
	assert(core.get_meta(other):get_string("access") == "")

	mtt.leave_player("access_card_tester2")
	callback()
end)

mtt.register("access card: copy craft", function(callback)
	local card = new_card("abc123", "Alice")
	card:get_meta():set_string("description", "Access card 'Alice' (id: 'abc123')")
	local pad = ItemStack("scifi_nodes:white_pad")
	local empty = ItemStack("")

	local craft_inv = core.create_detached_inventory("scifi_nodes_access_card_test")
	craft_inv:set_size("craft", 9)

	-- run all registered on_craft callbacks, like the engine does
	local function craft(old_grid, output)
		for _, fn in ipairs(core.registered_on_crafts) do
			fn(output, nil, old_grid, craft_inv)
		end
	end

	-- copy recipe: metadata is copied and the original kept
	local out = ItemStack(CARD)
	craft({ card, pad, empty, empty, empty, empty, empty, empty, empty }, out)
	local meta = out:get_meta()
	assert(meta:get_string("id") == "abc123")
	assert(meta:get_string("name") == "Alice")
	assert(meta:get_string("description") == "Access card 'Alice' (id: 'abc123')")
	assert(craft_inv:get_stack("craft", 1):get_name() == CARD)
	assert(craft_inv:get_stack("craft", 1):get_meta():get_string("id") == "abc123")

	-- unrelated items are not modified
	local stone = ItemStack("default:stone")
	craft({ card, pad, empty, empty, empty, empty, empty, empty, empty }, stone)
	assert(stone:get_meta():get_string("id") == "")

	-- fresh card without an original in the grid stays unconfigured
	local fresh = ItemStack(CARD)
	craft({ empty, empty, empty, empty, empty, empty, empty, empty, empty }, fresh)
	assert(fresh:get_meta():get_string("id") == "")

	core.remove_detached_inventory("scifi_nodes_access_card_test")
	callback()
end)
