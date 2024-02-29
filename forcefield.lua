minetest.register_node("scifi_nodes:forcefield", {
	description = "Forcefield",
	sunlight_propagates = true,
	drawtype = "glasslike",
	groups = {
		cracky = 1,
		level = 3
	},
	is_ground_content = false,
	sounds = scifi_nodes.node_sound_glass_defaults(),
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	tiles = {{
		name = "scifi_nodes_forcefield.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.0,
		}
	}}
})
