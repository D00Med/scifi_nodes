xpanes.register_pane("doompane", {
	description = "Doom pane",
	tiles = {"xpanes_space.png"},
	drawtype = "airlike",
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	air_equivalent = true,
	textures = {"scifi_nodes_doompane.png","scifi_nodes_doompane.png","default_wood.png"},
	inventory_image = "scifi_nodes_doompane.png",
	wield_image = "scifi_nodes_doompane.png",
	groups = {cracky=1, pane=1},
	recipe = {
		{"default:iron_lump", "default:iron_lump", ""},
		{"default:iron_lump", "", "default:iron_lump"},
		{"", "default:iron_lump", "default:iron_lump"}
	}
})
