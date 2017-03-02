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

-- 6 white tile from 6 plastic and 1 black dye
minetest.register_craft({
	output = "scifi_nodes:tile 6",
	recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "dye:black", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"}
    }
})

-- 4 white tile2 from 4 plastic
minetest.register_craft({
	output = "scifi_nodes:whitetile 4",
	recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
		{"", "dye:black", ""},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"}
    }
})

-- 8 white octagon  from 8 plastic and 1 black dye
minetest.register_craft({
    output = "scifi_nodes:whiteoct 8",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "dye:black", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"}
    }
})

-- 6 white wall base from 6 plastic and 3 black dye
minetest.register_craft({
    output = "scifi_nodes:white_base 6",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"},
        {"dye:black", "dye:black", "dye:black"},
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white2"}
    }
})

-- 1 white keypad  from 1 button and 1 plastic
minetest.register_craft({
    output = "scifi_nodes:white_pad",
    recipe = {
        {"mesecons_button:button_off", "scifi_nodes:white2"}
    }
})

-- 1 black from 1 plastic and 1 black dye
minetest.register_craft({
    output = "scifi_nodes:black",
    recipe = {
        {"scifi_nodes:white2", "dye:black"}
    }
})

-- 6 ceiling light from 2 plastic and 1  trap super glow glass
minetest.register_craft({
    output = "scifi_nodes:lightbar 6",
    recipe = {
        {"scifi_nodes:white2", "moreblocks:trap_super_glow_glass", "scifi_nodes:white2"}
    }
})

-- 1 wall light from 2 ceiling light
minetest.register_craft({
    output = "scifi_nodes:light_dynamic",
    recipe = {
        {"scifi_nodes:lightbar", "scifi_nodes:lightbar"}
    }
})

-- 6 white light stripe from 6 plastic, 2 blue dye, 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:whtlightbnd 4",
    recipe = {
        {"scifi_nodes:white2", "dye:blue", "scifi_nodes:white2"},
        {"", "scifi_nodes:lightbar", ""},
        {"scifi_nodes:white2", "dye:blue", "scifi_nodes:white2"}
    }
})

-- 1 dark glass from 1 obsidian glass and 1 black dye
minetest.register_craft({
    output = "scifi_nodes:glass",
    recipe = {
        {"default:obsidian_glass", "dye:black"}
    }
})

-- 6 tallscreen from 4 black wall, 2 obsidian glass and 1 cyan dye
minetest.register_craft({
    output = "scifi_nodes:tallscreen 6",
    recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
        {"default:obsidian_glass", "dye:cyan", "default:obsidian_glass"},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 6 widescreen from 4 black wall, 2 obsidian glass and 1 cyan dye
minetest.register_craft({
    output = "scifi_nodes:widescreen 6",
    recipe = {
        {"scifi_nodes:black", "default:obsidian_glass", "scifi_nodes:black"},
        {"", "dye:cyan", ""},
        {"scifi_nodes:black", "default:obsidian_glass", "scifi_nodes:black"}
    }
})

-- 6 strong window from 3 dark glass, 3 plastic wall
minetest.register_craft({
    output = "scifi_nodes:windowstraight 6",
    recipe = {
        {"scifi_nodes:glass", "scifi_nodes:glass", "scifi_nodes:glass"},
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"},
        {"", "", ""}
    }
})

-- 6 strong window (black) from 3 dark glass, 3 black wall
minetest.register_craft({
    output = "scifi_nodes:windowstraight2 6",
    recipe = {
        {"scifi_nodes:glass", "scifi_nodes:glass", "scifi_nodes:glass"},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"},
        {"", "", ""}
    }
})

-- 4 strong window corner from 3 dark glass, 5 plastic wall
minetest.register_craft({
    output = "scifi_nodes:windowcorner 4",
    recipe = {
        {"scifi_nodes:glass", "scifi_nodes:glass", "scifi_nodes:white"},
        {"scifi_nodes:glass", "", "scifi_nodes:white"},
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"}
    }
})

-- 4 strong window corner (black) from 3 dark glass, 5 black wall
minetest.register_craft({
    output = "scifi_nodes:windowcorner2 4",
    recipe = {
        {"scifi_nodes:glass", "scifi_nodes:glass", "scifi_nodes:black"},
        {"scifi_nodes:glass", "", "scifi_nodes:black"},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"}
    }
})
 
-- 8 metal block from 8 black wall and 1 iron ingot
minetest.register_craft({
    output = "scifi_nodes:lighttop 8",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"},
        {"scifi_nodes:black", "default:steel_ingot", "scifi_nodes:black"},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"}
    }
})

-- 1 damaged black wall from 1 black wall
minetest.register_craft({
    output = "scifi_nodes:blackdmg",
    recipe = {
        {"scifi_nodes:black"}
    }
})

-- 4 electronic screen from 4 plastic, 1 trap glow glass, 2 cyan dye, 2
-- microcontroller
minetest.register_craft({
    output = "scifi_nodes:screen 4",
    recipe = {
        {"scifi_nodes:white2", "mesecons_microcontroller:microcontroller0000", "scifi_nodes:white2"},
        {"dye:cyan", "scifi_nodes:lightbar", "dye:cyan"},
        {"scifi_nodes:white2", "mesecons_microcontroller:microcontroller0000", "scifi_nodes:white2"}
    }
})

-- 4 electronic screen2 from 4 plastic, 1 trap glow glass, 2 green dye, 2
-- microcontroller
minetest.register_craft({
    output = "scifi_nodes:screen2 4",
    recipe = {
        {"scifi_nodes:white2", "mesecons_microcontroller:microcontroller0000", "scifi_nodes:white2"},
        {"dye:green", "scifi_nodes:lightbar", "dye:green"},
        {"scifi_nodes:white2", "mesecons_microcontroller:microcontroller0000", "scifi_nodes:white2"}
    }
})

-- 4 black wall screen from 4 black wall and 1 electronic screen2
minetest.register_craft({
    output = "scifi_nodes:black_screen 4",
    recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
        {"", "scifi_nodes:screen2", ""},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 1 dented metal block from 1 metal block
minetest.register_craft({
	type = "cooking",
	output = "scifi_nodes:dent",
	recipe = "scifi_nodes:lighttop",
})

-- 9 ladder 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:ladder 9",
    recipe = {
        {"scifi_nodes:dent"}
    }
})

-- 4 black vent block from 4 black wall and 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:black_mesh 4",
    recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
        {"", "scifi_nodes:dent", ""},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 6 black detail from 6 black wall and 3 white dye
minetest.register_craft({
    output = "scifi_nodes:black_detail 6",
    recipe = {
        {"scifi_nodes:black", "dye:white", "scifi_nodes:black"},
        {"scifi_nodes:black", "dye:white", "scifi_nodes:black"},
        {"scifi_nodes:black", "dye:white", "scifi_nodes:black"}
    }
})

-- 6 blue floor from 6 black wall, 1 blue dye, 1 white dye and 1 trap glow glass
minetest.register_craft({
    output = "scifi_nodes:bfloor 6",
    recipe = {
        {"dye:blue", "scifi_nodes:black", "dye:white"},
        {"scifi_nodes:black", "scifi_nodes:lightbar", "scifi_nodes:black"},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"}
    }
})

-- 8 metal wall from 4 black wall and 4 dented metal block
minetest.register_craft({
    output = "scifi_nodes:wall 8",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:dent", "scifi_nodes:black"},
        {"scifi_nodes:dent", "", "scifi_nodes:dent"},
        {"scifi_nodes:black", "scifi_nodes:dent", "scifi_nodes:black"}
    }
})

-- 6 vent from 6 dented metal block
minetest.register_craft({
    output = "scifi_nodes:vent2 6",
    recipe = {
        {"scifi_nodes:dent", "scifi_nodes:dent", "scifi_nodes:dent"},
        {"", "", ""},
        {"scifi_nodes:dent", "scifi_nodes:dent", "scifi_nodes:dent"}
    }
})

-- 6 black vent from 6 black wall
minetest.register_craft({
    output = "scifi_nodes:blackvent 6",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"},
        {"", "", ""},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"}
    }
})

-- 1 hazard stripe from 1 black wall and 2 yellow dye
minetest.register_craft({
    output = "scifi_nodes:stripes",
    recipe = {
        {"dye:yellow", "", ""},
        {"", "scifi_nodes:black", ""},
        {"", "", "dye:yellow"}
    }
})

-- 1 laptop  from 2 black, 1 widescreen, 1 black detail, 1 microcontroller, 1
-- mesecon button
minetest.register_craft({
    output = "scifi_nodes:laptop_closed",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:widescreen"},
        {"mesecons_microcontroller:microcontroller0000", "scifi_nodes:black_detail"},
        {"scifi_nodes:black", "mesecons_button:button_off"}
    }
})

-- 1 keyboard and monitor  from 3 black, 1 widescreen, 1 black detail, 1 microcontroller
minetest.register_craft({
    output = "scifi_nodes:keysmonitor",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:widescreen", "scifi_nodes:black"},
        {"mesecons_microcontroller:microcontroller0000", "scifi_nodes:black_detail", "mesecons_microcontroller:microcontroller0000"}
    }
})

-- 4 black tile from 4 black and 1 white dye
minetest.register_craft({
	output = "scifi_nodes:blacktile 4",
	recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
		{"", "dye:white", ""},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 4 black tile2 from 4 black
minetest.register_craft({
	output = "scifi_nodes:blacktile2 4",
	recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
		{"", "", ""},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 4 blackplate from 4 black and 1 dent
minetest.register_craft({
	output = "scifi_nodes:blackplate 4",
	recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
		{"", "scifi_nodes:dent", ""},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 8 black octagon  from 8 black and 1 white dye
minetest.register_craft({
    output = "scifi_nodes:blackoct 8",
    recipe = {
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"},
        {"scifi_nodes:black", "dye:white", "scifi_nodes:black"},
        {"scifi_nodes:black", "scifi_nodes:black", "scifi_nodes:black"}
    }
})

-- 4 damaged black wall (stripes) from 4 damaged black wall and 1 hazard stripe
minetest.register_craft({
	output = "scifi_nodes:blackdmgstripe 4",
	recipe = {
        {"scifi_nodes:blackdmg", "", "scifi_nodes:blackdmg"},
		{"", "scifi_nodes:stripes", ""},
        {"scifi_nodes:blackdmg", "", "scifi_nodes:blackdmg"}
    }
})

-- 1 blink from 1 black,1 dented metal block, 1 mesecon torch and 4 mesecon
minetest.register_craft({
	output = "scifi_nodes:blink",
	recipe = {
        {"", "scifi_nodes:black", ""},
        {"mesecons:wire_00000000_off", "scifi_nodes:dent", "mesecons_torch:mesecon_torch_on"},
        {"mesecons:wire_00000000_off", "mesecons:wire_00000000_off", "mesecons:wire_00000000_off"}
    }
})

-- 4 black light stripe from 4 black, 2 white dye, 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:blklt2 6",
    recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
        {"dye:white", "scifi_nodes:lightbar", "dye:white"},
        {"scifi_nodes:black", "", "scifi_nodes:black"}
    }
})

-- 4 metal mesh from 4 metal block
minetest.register_craft({
    output = "scifi_nodes:mesh 4",
    recipe = {
        {"", "scifi_nodes:lighttop", ""},
        {"scifi_nodes:lighttop", "", "scifi_nodes:lighttop"},
        {"", "scifi_nodes:lighttop", ""}
    }
})

-- 4 metal floormesh from 4 metal block
minetest.register_craft({
    output = "scifi_nodes:mesh2 4",
    recipe = {
        {"scifi_nodes:lighttop", "", "scifi_nodes:lighttop"},
        {"", "", ""},
        {"scifi_nodes:lighttop", "", "scifi_nodes:lighttop"}
    }
})

-- 1 storage box from 8 dented metal block
minetest.register_craft({
    output = "scifi_nodes:box",
    recipe = {
        {"scifi_nodes:dent", "scifi_nodes:dent", "scifi_nodes:dent"},
        {"scifi_nodes:dent", "", "scifi_nodes:dent"},
        {"scifi_nodes:dent", "scifi_nodes:dent", "scifi_nodes:dent"}
    }
})

-- 6 blue metal from 6 plastic, 2 blue dye, 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:bluemetal 6",
    recipe = {
        {"scifi_nodes:white2", "dye:blue", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "scifi_nodes:dent", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "dye:blue", "scifi_nodes:white2"}
    }
})

-- 6 blue bars from 6 blue metal
minetest.register_craft({
    output = "scifi_nodes:bluebars 6",
    recipe = {
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"}
    }
})

-- 4 blue tile from 4 blue metal
minetest.register_craft({
    output = "scifi_nodes:bluetile 4",
    recipe = {
        {"scifi_nodes:bluemetal", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal", "scifi_nodes:bluemetal"}
    }
})

-- 4 blue metal block from 4 blue metal
minetest.register_craft({
    output = "scifi_nodes:blue_square 4",
    recipe = {
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"},
        {"", "", ""},
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"}
    }
})

-- 4 blue lines from 4 black plate and 1 blue dye
minetest.register_craft({
    output = "scifi_nodes:blue 4",
    recipe = {
        {"scifi_nodes:blackplate", "", "scifi_nodes:blackplate"},
        {"", "dye:blue", ""},
        {"scifi_nodes:blackplate", "", "scifi_nodes:blackplate"}
    }
})

-- 1 blue metal light from 1 blue metal and 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:blumetlight",
    recipe = {
        {"scifi_nodes:bluemetal", "scifi_nodes:lightbar"}
    }
})

-- 4 blue stripe light from 4 blue metal and 1 light bar
minetest.register_craft({
    output = "scifi_nodes:blumetstr 4",
    recipe = {
        {"scifi_nodes:bluemetal", "scifi_nodes:lightbar", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal", "", "scifi_nodes:bluemetal"}
    }
})

-- 6 capsule from 1 plastic, 1 glass, 1 orange dye, 1 green dye and 
-- 1 cyan dye
minetest.register_craft({
    output = "scifi_nodes:capsule 6",
    recipe = {
        {"", "dye:orange", ""},
        {"scifi_nodes:glass", "dye:green", "scifi_nodes:white2"},
        {"", "dye:cyan", ""}
    }
})

-- 9 disc from 1 plastic and 1 blue dye
minetest.register_craft({
    output = "scifi_nodes:disc 9",
    recipe = {
        {"scifi_nodes:white2", "dye:blue"}
    }
})

-- 6 disc shelves from 3 dented metal block and 6 disc
minetest.register_craft({
    output = "scifi_nodes:discs 6",
    recipe = {
        {"scifi_nodes:disc", "scifi_nodes:disc", "scifi_nodes:disc"},
        {"scifi_nodes:dent", "scifi_nodes:dent", "scifi_nodes:dent"},
        {"scifi_nodes:disc", "scifi_nodes:disc", "scifi_nodes:disc"}
    }
})

-- 6 bluelightbox from 6 metal block, 2 blue dye and 1 light bar
minetest.register_craft({
    output = "scifi_nodes:light 6",
    recipe = {
        {"scifi_nodes:lighttop", "dye:blue", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "scifi_nodes:lightbar", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "dye:blue", "scifi_nodes:lighttop"}
    }
})

-- 4 blue octagon glass from 4 glass, 2 blue dye and 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:octbl 4",
    recipe = {
        {"dye:blue", "scifi_nodes:glass", ""},
        {"scifi_nodes:glass", "scifi_nodes:lightbar", "scifi_nodes:glass"},
        {"", "scifi_nodes:glass", "dye:blue"}
    }
})

-- 4 wall monitor from 4 glass, 1 black wall
minetest.register_craft({
    output = "scifi_nodes:monitorwall 4",
    recipe = {
        {"scifi_nodes:glass", "", "scifi_nodes:glass"},
        {"", "scifi_nodes:black", ""},
        {"scifi_nodes:glass", "", "scifi_nodes:glass"}
    }
})

-- 1 microscope from 2 glass, 1 plastic
minetest.register_craft({
    output = "scifi_nodes:microscope",
    recipe = {
        {"scifi_nodes:glass"},
        {"scifi_nodes:white2"},
        {"scifi_nodes:glass"}
    }
})

-- 4 Blue wall light from 4 plastic, 1 wall light, 2 blue dye
minetest.register_craft({
    output = "scifi_nodes:bluwllight 4",
    recipe = {
        {"scifi_nodes:white2", "", "scifi_nodes:white2"},
        {"dye:blue", "scifi_nodes:light_dynamic", "dye:blue"},
        {"scifi_nodes:white2", "", "scifi_nodes:white2"}
    }
})

-- 6 twin lights from 6 black vent, 3 wall lights
minetest.register_craft({
    output = "scifi_nodes:lightstp 6",
    recipe = {
        {"scifi_nodes:blackvent", "scifi_nodes:blackvent", "scifi_nodes:blackvent"},
        {"scifi_nodes:light_dynamic", "scifi_nodes:light_dynamic", "scifi_nodes:light_dynamic"},
        {"scifi_nodes:blackvent", "scifi_nodes:blackvent", "scifi_nodes:blackvent"}
    }
})

