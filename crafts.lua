-- CRAFTING RECIPES FOR SCIFI NODES

-- 6 basic plastic from 9 homedecor plastic sheet
minetest.register_craft({
	output = "scifi_nodes:white2 6",
	recipe = {
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"}
	}
})

-- 6 plastic wall from 6 plastic
minetest.register_craft({
    output = "scifi_nodes:white 6",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"}
    }
})

-- 6 white tile from 6 plastic
minetest.register_craft({
	output = "scifi_nodes:tile 6",
	recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"}
    }
})

-- 4 white tile2 from 4 plastic
minetest.register_craft({
	output = "scifi_nodes:whitetile 4",
	recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", ""},
		{"scifi_nodes:white2", "scifi_nodes:white2", ""},
        {"", "", ""}
    }
})

-- 8 white octagon  from 8 plastic
minetest.register_craft({
    output = "scifi_nodes:whiteoct 8",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"}
    }
})

-- 6 white wall base from 6 plastic and 3 black dye (because half is black not
-- full lol :P)
minetest.register_craft({
    output = "scifi_nodes:white 6",
    recipe = {
        {"scifi_nodes:white2 2", "scifi_nodes:white2 2", "scifi_nodes:white2 2"},
        {"dye:black", "dye:black", "dye:black"},
        {"", "", ""}
    }
})
-- 1 white keypad  from 1 button and 1 plastic
minetest.register_craft({
    output = "scifi_nodes:white_pad",
    recipe = {
        {"mesecons_button:button_off", "scifi_nodes:white2", ""},
        {"", "", ""},
        {"", "", ""}
    }
})

