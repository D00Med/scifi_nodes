--some code taken from moreblocks(the collision and selection boxes), license below:
--Copyright (c) 2011-2015 Calinou and contributors.
--Licensed under the zlib license.

scifi_nodes = {}

function scifi_nodes.register_slope(name, desc, texture, light)
minetest.register_node("scifi_nodes:slope_"..name, {
	description = desc.." Slope",
	sunlight_propagates = false,
	drawtype = "mesh",
	mesh = "moreblocks_slope.obj",
	tiles = texture,
		selection_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
		collision_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = light,
	groups = {cracky=1},
	on_place = minetest.rotate_node
})
end

scifi_nodes.register_slope("white2", "Plastic", {"scifi_nodes_white2.png",}, 0)
scifi_nodes.register_slope("black", "Black", {"scifi_nodes_black.png",}, 0)
scifi_nodes.register_slope("white", "White", {"scifi_nodes_white.png",}, 0)
scifi_nodes.register_slope("grey", "Grey", {"scifi_nodes_grey.png",}, 0)
scifi_nodes.register_slope("bluebars", "Blue bars", {"scifi_nodes_bluebars.png",}, 0)
scifi_nodes.register_slope("mesh2", "Metal floormesh", {"scifi_nodes_mesh2.png",}, 0)
scifi_nodes.register_slope("mesh", "Metal mesh", {"scifi_nodes_mesh.png",}, 0)
scifi_nodes.register_slope("vent", "Vent", {"scifi_nodes_vent2.png",}, 0)
scifi_nodes.register_slope("rlight", "Red light", {"scifi_nodes_redlight.png",}, 10)
scifi_nodes.register_slope("blight", "Blue light", {"scifi_nodes_light.png",}, 10)
scifi_nodes.register_slope("glight", "Green light", {"scifi_nodes_greenlight.png",}, 10)
scifi_nodes.register_slope("holes", "Holes", {"scifi_nodes_holes.png",}, 0)
scifi_nodes.register_slope("pipe", "Pipe", {"scifi_nodes_pipe.png",}, 0)
scifi_nodes.register_slope("stripes", "Stripes", {"scifi_nodes_stripes.png",}, 0)
scifi_nodes.register_slope("screen", "Screen", {"scifi_nodes_screen3.png",}, 5)
scifi_nodes.register_slope("lightstripe", "Lightstripe", {"scifi_nodes_lightstripe.png",}, 20)
scifi_nodes.register_slope("blight2", "Blue Light 2", {"scifi_nodes_capsule3.png",}, 20)
scifi_nodes.register_slope("wallpipe", "Alien Pipe", {"scifi_nodes_wallpipe.png",}, 0)
scifi_nodes.register_slope("alien", "Alien Wall", {"scifi_nodes_alnslp.png",}, 0)
scifi_nodes.register_slope("purple", "Purple", {"scifi_nodes_purple.png",}, 0)
scifi_nodes.register_slope("gblock", "Gblock", {"scifi_nodes_gblock2_front1.png",}, 0)
scifi_nodes.register_slope("greenmetal", "Green metal", {"scifi_nodes_greenmetal.png",}, 0)
scifi_nodes.register_slope("bluemetal", "Blue metal", {"scifi_nodes_bluemetal.png",}, 0)
scifi_nodes.register_slope("wall", "Metal wall", {"scifi_nodes_wall.png",}, 0)
scifi_nodes.register_slope("rough", "Rough metal", {"scifi_nodes_rough.png",}, 0)
scifi_nodes.register_slope("blklt2", "Black stripe light", {"scifi_nodes_black_light2.png",}, 10)
