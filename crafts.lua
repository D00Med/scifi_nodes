--CRAFTING RECIPES FOR SCIFI NODES

--4 basic plastic from 9 homedecor plastic sheet
minetest.register_craft({
	output = "scifi_nodes:white2 4",
	recipe = {
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"}
	}
})

--4 plastic wall from 4 plastic
minetest.register_craft({
    output = "scifi_nodes:white 4",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", ""},
        {"scifi_nodes:white2", "scifi_nodes:white2", ""},
        {"", "", ""}
    }
})

--4 white tile from 4 plastic
minetest.register_craft({
	output = "scifi_nodes:tile 4",
	recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"", "", ""}
    }
})

--4 white tile2 from 4 plastic
minetest.register_craft({
	output = "scifi_nodes:whitetile 4",
	recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
		{"", "", ""},
		{"scifi_nodes:white2", "", "scifi_nodes:white2"}
    }
})

--4 white octagon  from 4 plastic
minetest.register_craft({
    output = "scifi_nodes:whiteoct 4",
    recipe = {
        {"", "scifi_nodes:white2", ""},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"", "scifi_nodes:white2", ""}
    }
})
