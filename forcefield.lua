minetest.register_node("scifi_nodes:forcefield", {
	description = "Forcefield",
	sunlight_propagates = true,
	drawtype = "glasslike",
	groups = {},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	diggable = false,
	drop = '',
	tiles = {{
		name = "scifi_nodes_forcefield.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.0,
		}
	}},
	on_blast = function() end,
})