
--------------
-- Digicode --
--------------
local has_mesecons = minetest.get_modpath("mesecons")

local secret_code = "1234"
local allowed_chars = "0123456789"
local code_length = 4
local digicode_context = {}

-- after_place_node, use by digicode and palm_scanner
-- placer is a player object
local function set_owner(pos, placer, itemstack, pointed_thing)
	local meta = minetest.get_meta(pos)
	meta:set_string("owner", placer:get_player_name())
	meta:set_string("code", secret_code)
end

local function toggle_digicode(pos)
	local node = minetest.get_node(pos)
	local name = node.name
	if name == "scifi_nodes:digicode_off" then
		minetest.swap_node(pos, {name="scifi_nodes:digicode_on", param2=node.param2})
		mesecon.receptor_on(pos, scifi_nodes.get_switch_rules(node.param2))
		minetest.get_node_timer(pos):start(2)
	elseif name == "scifi_nodes:digicode_on" then
		minetest.swap_node(pos, {name="scifi_nodes:digicode_off", param2=node.param2})
		mesecon.receptor_off(pos, scifi_nodes.get_switch_rules(node.param2))
	end
end

local function code_is_valid(code)
	local valid = false
	if type(code) == "string" and #code == code_length then
		valid = true
	end
	for i=1, #code do
		if not string.find(allowed_chars, string.sub(code,i,i)) then
			valid = false
		end
	end
	return valid
end

local function update_code(pos, code)
	local meta = minetest.get_meta(pos)
	meta:set_string("code", code)
end

local function show_digicode_formspec(pos, node, player, itemstack, pointed_thing)
	local meta = minetest.get_meta(pos)
	local owner = meta:get_string("owner")
	local current_code = meta:get_string("code")
	local current_player = player:get_player_name()

	-- Gathering datas that will be used by callback function
	digicode_context[current_player] = {code = current_code, pos = pos}

	if current_player == owner then
		minetest.show_formspec(current_player, "digicode_formspec",
		"size[6,3]"..
		"field[1,1;3,1;code;Code;]".. -- type, position, size, name, label
		"button_exit[1,2;2,1;change;Change code]"..
		"button_exit[3,2;2,1;open;Open door]")
	else
		minetest.show_formspec(current_player, "digicode_formspec",
		"size[6,3]"..
		"field[2,1;3,1;code;Code;]"..
		"button_exit[2,2;3,1;open;Open door]")
	end
end

-- Process datas from digicode_formspec
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "digicode_formspec" then
		return false
	end

	local sounds = {"scifi_nodes_scanner_granted","scifi_nodes_scanner_refused",
		"scifi_nodes_digicode_granted","scifi_nodes_digicode_refused"
	}
	local sound_index

	-- We have the right formspec so we can proceed it.
	-- Let's retrieve the datas we need :
	local context = digicode_context[player:get_player_name()]

	if fields.change and code_is_valid(fields.code) then
		update_code(context.pos, fields.code)
		sound_index = 1
	elseif
		fields.change and not code_is_valid(fields.code) then
		sound_index = 2
	elseif
		fields.open and fields.code == context.code then
		toggle_digicode(context.pos)
		sound_index = 3
	elseif
		fields.open and fields.code ~= context.code then
		sound_index = 4
	end
    -- play sound at context position
	minetest.sound_play(sounds[sound_index], {
	pos = context.pos,
		max_hear_distance = 10
    })
	context[player:get_player_name()] = nil -- we don't need it anymore
end)

minetest.register_node("scifi_nodes:digicode_on", {
	description = "Digicode",
	sunlight_propagates = true,
	buildable_to = false,
	tiles = {"scifi_nodes_digicode_on.png",},
	inventory_image = "scifi_nodes_digicode_on.png",
	wield_image = "scifi_nodes_digicode_on.png",
	drawtype = "signlike",
	node_box = {type = "wallmounted",},
	selection_box = {type = "wallmounted",},
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 5,
	groups = {cracky=1, oddly_breakable_by_hand=1, not_in_creative_inventory=1, mesecon_needs_receiver = 1},
	drop = {items = {"scifi_nodes:digicode_off"}},
	mesecons = {
		receptor = {
			state = (has_mesecons and mesecon.state.on)
		}
	},
	on_timer = toggle_digicode,
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("scifi_nodes:digicode_off", {
	description = "Digicode",
	tiles = {"scifi_nodes_digicode_off.png",},
	inventory_image = "scifi_nodes_digicode_off.png",
	wield_image = "scifi_nodes_digicode_off.png",
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
	after_place_node = set_owner,
	on_rightclick = show_digicode_formspec,
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "scifi_nodes:digicode_off 2",
	recipe = {{"mesecons_switch:mesecon_switch_off", "scifi_nodes:grey", ""}}
})
