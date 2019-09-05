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

minetest.register_craft({
	output = "scifi_nodes:super_white",
	recipe = {
		{"scifi_nodes:white2", "default:torch", ""}
	}
})

minetest.register_craft({
	output = "scifi_nodes:ultra_white",
	recipe = {
		{"default:torch", "scifi_nodes:white2", "default:torch"}
	}
})

minetest.register_craft({
	output = "scifi_nodes:ultra_white",
	recipe = {
		{"scifi_nodes:super_white", "default:torch", ""}
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

-- 8 ceiling light from 2 plastic and 1 meselamp
-- Old recipe used "moreblocks:trap_super_glow_glass"
-- but moreblocks is an optional dependance
minetest.register_craft({
    output = "scifi_nodes:lightbar 8",
    recipe = {
        {"scifi_nodes:white2", "default:meselamp", "scifi_nodes:white2"}
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

-- 4 black wall screen from 4 black meshes and 1 electronic screen2
minetest.register_craft({
    output = "scifi_nodes:black_screen 4",
    recipe = {
        {"scifi_nodes:black_mesh", "", "scifi_nodes:black_mesh"},
        {"", "scifi_nodes:screen2", ""},
        {"scifi_nodes:black_mesh", "", "scifi_nodes:black_mesh"}
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

-- 6 black vent block from 4 black wall and 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:black_mesh 6",
    recipe = {
        {"scifi_nodes:black", "", "scifi_nodes:black"},
        {"scifi_nodes:dent", "", "scifi_nodes:dent"},
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
        {
		"mesecons_microcontroller:microcontroller0000",
		"scifi_nodes:black_detail",
		"mesecons_microcontroller:microcontroller0000"
	}
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

-- 1 black wallpanel from 1 red, 1 green, 1 yellow dye, 1 microcontroller
-- and one black wall
minetest.register_craft({
    output = "scifi_nodes:black_lights",
    recipe = {
        {"dye:red", "dye:green", "dye:yellow"},
        {
		"mesecons_microcontroller:microcontroller0000",
		"scifi_nodes:black",
		"mesecons_microcontroller:microcontroller0000"
	}
    }
})

-- 4 Doom light from 4 red dye and 4 black
minetest.register_craft({
    output = "scifi_nodes:doomlight 4",
    recipe = {
        {"dye:red", "scifi_nodes:black", "dye:red"},
        {"scifi_nodes:black", "scifi_nodes:lightbar", "scifi_nodes:black"},
        {"dye:red", "scifi_nodes:black", "dye:red"}
    }
})

-- 6 Doom wall1 from 4 white wall, 2 black wall, 1 red dye
minetest.register_craft({
    output = "scifi_nodes:doomwall1 6",
    recipe = {
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"},
        {"scifi_nodes:black", "dye:red", "scifi_nodes:black"},
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"}
    }
})

-- 6 Doom wall2 from 4 white wall, 2 black wall, 1 green dye
minetest.register_craft({
    output = "scifi_nodes:doomwall2 6",
    recipe = {
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"},
        {"scifi_nodes:black", "dye:green", "scifi_nodes:black"},
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"}
    }
})

-- 6 Doom wall3 from 4 white wall, 2 black wall, 1 grey dye
minetest.register_craft({
    output = "scifi_nodes:doomwall3 6",
    recipe = {
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"},
        {"scifi_nodes:black", "dye:grey", "scifi_nodes:black"},
        {"scifi_nodes:white", "scifi_nodes:white", "scifi_nodes:white"}
    }
})

-- 4 fan from 4 vent, 4 plastic sheet, 1 red dye
minetest.register_craft({
    output = "scifi_nodes:fan 4",
    recipe = {
        {"scifi_nodes:vent2", "homedecor:plastic_sheeting", "scifi_nodes:vent2"},
        {"homedecor:plastic_sheeting", "dye:red", "homedecor:plastic_sheeting"},
        {"scifi_nodes:vent2", "homedecor:plastic_sheeting", "scifi_nodes:vent2"}
    }
})

-- 6 green metal from 6 plastic, 2 green dye, 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:greenmetal 6",
    recipe = {
        {"scifi_nodes:white2", "dye:green", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "scifi_nodes:dent", "scifi_nodes:white2"},
        {"scifi_nodes:white2", "dye:green", "scifi_nodes:white2"}
    }
})

-- 4 green lines from 4 black plate and 1 green dye
minetest.register_craft({
    output = "scifi_nodes:green 4",
    recipe = {
        {"scifi_nodes:blackplate", "", "scifi_nodes:blackplate"},
        {"", "dye:green", ""},
        {"scifi_nodes:blackplate", "", "scifi_nodes:blackplate"}
    }
})

-- 6 green pipe from 6 green metal and 1 vent
minetest.register_craft({
    output = "scifi_nodes:grnpipe 6",
    recipe = {
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"},
        {"scifi_nodes:greenmetal", "scifi_nodes:vent2", "scifi_nodes:greenmetal"},
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"}
    }
})

-- 1 broken green pipe from 1 green pipe
minetest.register_craft({
    output = "scifi_nodes:grnpipe2",
    recipe = {
        {"scifi_nodes:grnpipe"}
    }
})

-- 6 green lightbox from 6 metal block, 2 green dye and 1 light bar
minetest.register_craft({
    output = "scifi_nodes:green_light 6",
    recipe = {
        {"scifi_nodes:lighttop", "dye:green", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "scifi_nodes:lightbar", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "dye:green", "scifi_nodes:lighttop"}
    }
})

-- 6 green tubes from 6 green pipe
minetest.register_craft({
    output = "scifi_nodes:greentubes 6",
    recipe = {
        {"scifi_nodes:grnpipe", "", "scifi_nodes:grnpipe"},
        {"scifi_nodes:grnpipe", "", "scifi_nodes:grnpipe"},
        {"scifi_nodes:grnpipe", "", "scifi_nodes:grnpipe"}
    }
})

-- 4 green metal wall2 from 4 green metal, 1 white dye
minetest.register_craft({
    output = "scifi_nodes:greenmetal2 4",
    recipe = {
        {"scifi_nodes:greenmetal", "dye:white", "scifi_nodes:greenmetal"},
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"}
    }
})

-- 6 green wall lights2 from 6 green metal, 2 green dye, 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:greenlights2 6",
    recipe = {
        {"scifi_nodes:greenmetal", "scifi_nodes:greenmetal", "scifi_nodes:greenmetal"},
        {"dye:green", "scifi_nodes:lightbar", "dye:green"},
        {"scifi_nodes:greenmetal", "scifi_nodes:greenmetal", "scifi_nodes:greenmetal"}
    }
})

-- 6 green wall lights from 6 green metal2, 2 green dye, 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:greenlights 6",
    recipe = {
        {"scifi_nodes:greenmetal2", "scifi_nodes:greenmetal2", "scifi_nodes:greenmetal2"},
        {"dye:green", "scifi_nodes:lightbar", "dye:green"},
        {"scifi_nodes:greenmetal2", "scifi_nodes:greenmetal2", "scifi_nodes:greenmetal2"}
    }
})

-- 4 green light bar from 4 green metal, 2 green dye, 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:greenbar 4",
    recipe = {
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"},
        {"dye:green", "scifi_nodes:lightbar", "dye:green"},
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"}
    }
})

-- 4 green metal block from 4 green metal
minetest.register_craft({
    output = "scifi_nodes:green_square 4",
    recipe = {
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"},
        {"", "", ""},
        {"scifi_nodes:greenmetal", "", "scifi_nodes:greenmetal"}
    }
})

-- 4 green octagon glass from 4 glass, 2 green dye and 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:octgrn 4",
    recipe = {
        {"dye:green", "scifi_nodes:glass", ""},
        {"scifi_nodes:glass", "scifi_nodes:lightbar", "scifi_nodes:glass"},
        {"", "scifi_nodes:glass", "dye:green"}
    }
})

-- 1 grey from 1 plastic and 1 grey dye
minetest.register_craft({
    output = "scifi_nodes:grey",
    recipe = {
        {"scifi_nodes:white2", "dye:grey"}
    }
})

-- 4 grey metal block from 4 grey and 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:grey_square 4",
    recipe = {
        {"scifi_nodes:grey", "", "scifi_nodes:grey"},
        {"", "scifi_nodes:dent", ""},
        {"scifi_nodes:grey", "", "scifi_nodes:grey"}
    }
})

-- 6 grey bars from 4 grey and 2 grey metal block
minetest.register_craft({
    output = "scifi_nodes:greybars 6",
    recipe = {
        {"scifi_nodes:grey", "", "scifi_nodes:grey"},
        {"scifi_nodes:grey_square", "", "scifi_nodes:grey_square"},
        {"scifi_nodes:grey", "", "scifi_nodes:grey"}
    }
})

-- 6 grey wall bolts from 4 grey wall and 2 grey metal block
minetest.register_craft({
    output = "scifi_nodes:greybolts 6",
    recipe = {
        {"scifi_nodes:grey_square", "scifi_nodes:grey", "scifi_nodes:grey_square"},
        {"scifi_nodes:grey", "scifi_nodes:grey", "scifi_nodes:grey"}
    }
})

-- 4 grey wall dots from 4 grey wall and 1 white dye, 1 grey dye
minetest.register_craft({
    output = "scifi_nodes:greydots 4",
    recipe = {
        {"dye:white", "scifi_nodes:grey", "dye:grey"},
        {"scifi_nodes:grey", "scifi_nodes:grey", "scifi_nodes:grey"}
    }
})

-- 6 grey power pipe from 6 grey and 2 green dye and 1 light bar
minetest.register_craft({
    output = "scifi_nodes:greygreenbar 6",
    recipe = {
        {"scifi_nodes:grey", "scifi_nodes:grey", "scifi_nodes:grey"},
        {"dye:green", "scifi_nodes:lightbar", "dye:green"},
        {"scifi_nodes:grey", "scifi_nodes:grey", "scifi_nodes:grey"}
    }
})

-- 4 grey tile from 4 grey and 1 black dye and 1 white dye
minetest.register_craft({
    output = "scifi_nodes:greytile 4",
    recipe = {
        {"scifi_nodes:grey", "dye:black", "scifi_nodes:grey"},
        {"", "", ""},
        {"scifi_nodes:grey", "dye:white", "scifi_nodes:grey"}
    }
})

-- 4 metal table from 2 grey and 2 dented metal block
minetest.register_craft({
    output = "scifi_nodes:table 4",
    recipe = {
        {"scifi_nodes:grey", "scifi_nodes:dent", "scifi_nodes:grey"},
        {"", "scifi_nodes:dent", ""}
    }
})

-- 8 doom floor from 4 plastic, 1 black dye, 4 stones
minetest.register_craft({
    output = "scifi_nodes:octofloor 8",
    recipe = {
        {"scifi_nodes:white2", "default:stone", "scifi_nodes:white2"},
        {"default:stone", "dye:black", "default:stone"},
        {"scifi_nodes:white2", "default:stone", "scifi_nodes:white2"}
    }
})

-- 8 brown doom floor from 4 plastic, 1 black dye, 4 woods
minetest.register_craft({
    output = "scifi_nodes:octofloor2 8",
    recipe = {
        {"scifi_nodes:white2", "default:wood", "scifi_nodes:white2"},
        {"default:wood", "dye:black", "default:wood"},
        {"scifi_nodes:white2", "default:wood", "scifi_nodes:white2"}
    }
})

-- 4 purple octagon glass from 4 glass, 1 red dye, 1 blue dye and 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:octppl 4",
    recipe = {
        {"dye:red", "scifi_nodes:glass", ""},
        {"scifi_nodes:glass", "scifi_nodes:lightbar", "scifi_nodes:glass"},
        {"", "scifi_nodes:glass", "dye:blue"}
    }
})

-- 4 orange octagon glass from 4 glass, 2 orange dye and 1 lightbar
minetest.register_craft({
    output = "scifi_nodes:octrng 4",
    recipe = {
        {"dye:orange", "scifi_nodes:glass", ""},
        {"scifi_nodes:glass", "scifi_nodes:lightbar", "scifi_nodes:glass"},
        {"", "scifi_nodes:glass", "dye:orange"}
    }
})

-- 1 purple node from 1 plastic, 1 blue dye and 1 red dye
minetest.register_craft({
    output = "scifi_nodes:purple",
    recipe = {
        {"dye:red", "scifi_nodes:white2", "dye:blue"}
    }
})

-- 4 purple tile from 4 purple node
minetest.register_craft({
    output = "scifi_nodes:pplblk 4",
    recipe = {
        {"scifi_nodes:purple", "", "scifi_nodes:purple"},
        {"", "scifi_nodes:dent", ""},
        {"scifi_nodes:purple", "", "scifi_nodes:purple"}
    }
})

-- 6 purple window from  2 purple node, 1 orange octagon glass
minetest.register_craft({
    output = "scifi_nodes:pplwndw 6",
    recipe = {
        {"scifi_nodes:purple", "scifi_nodes:octrng", "scifi_nodes:purple"}
    }
})

-- 6 purple wall4 from 6 purple nodes, 3 white dyes
minetest.register_craft({
    output = "scifi_nodes:pplwll4 6",
    recipe = {
        {"dye:white", "dye:white", "dye:white"},
        {"scifi_nodes:purple", "scifi_nodes:purple", "scifi_nodes:purple"},
        {"scifi_nodes:purple", "scifi_nodes:purple", "scifi_nodes:purple"}
    }
})

-- 6 purple wall3 from 6 purple nodes, 3 white dyes
minetest.register_craft({
    output = "scifi_nodes:pplwll3 6",
    recipe = {
        {"dye:white", "scifi_nodes:purple", "scifi_nodes:purple"},
        {"dye:white", "scifi_nodes:purple", "scifi_nodes:purple"},
        {"dye:white", "scifi_nodes:purple", "scifi_nodes:purple"}
    }
})

-- 6 purple wall2 from 6 purple nodes, 3 black dye
minetest.register_craft({
    output = "scifi_nodes:pplwll2 6",
    recipe = {
        {"scifi_nodes:purple", "scifi_nodes:purple", "scifi_nodes:purple"},
        {"scifi_nodes:purple", "scifi_nodes:purple", "scifi_nodes:purple"},
        {"dye:black", "dye:black", "dye:black"}
    }
})

-- 1 purple wall from  1 purple wall2
minetest.register_craft({
    output = "scifi_nodes:pplwll",
    recipe = {
        {"scifi_nodes:pplwll2"}
    }
})

-- 6 red lightbox from 6 metal block, 2 red dye and 1 light bar
minetest.register_craft({
    output = "scifi_nodes:red_light 6",
    recipe = {
        {"scifi_nodes:lighttop", "dye:red", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "scifi_nodes:lightbar", "scifi_nodes:lighttop"},
        {"scifi_nodes:lighttop", "dye:red", "scifi_nodes:lighttop"}
    }
})

-- 1 rough metal from 1 metal block and 1 compressed cobblestone
minetest.register_craft({
    output = "scifi_nodes:rough",
    recipe = {
        {"scifi_nodes:lighttop", "moreblocks:cobble_compressed"}
    }
})

--1 rusty metal from 1 rough metal and 1 water bucket
minetest.register_craft({
    output = "scifi_nodes:rust",
    recipe = {
        {"scifi_nodes:rough", "bucket:bucket_water"}
    },
    replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

-- 4 red metal block from 4 rusty metal and 1 dented metal block
minetest.register_craft({
    output = "scifi_nodes:red_square 4",
    recipe = {
        {"scifi_nodes:rust", "", "scifi_nodes:rust"},
        {"", "scifi_nodes:dent", ""},
        {"scifi_nodes:rust", "", "scifi_nodes:rust"}
    }
})

-- 6 rusty floor from 6 rusty metal, 1 black dye, 1 white dye and 1 trap glow glass
minetest.register_craft({
    output = "scifi_nodes:rfloor 6",
    recipe = {
        {"dye:black", "scifi_nodes:rust", "dye:white"},
        {"scifi_nodes:rust", "scifi_nodes:lightbar", "scifi_nodes:rust"},
        {"scifi_nodes:rust", "scifi_nodes:rust", "scifi_nodes:rust"}
    }
})

-- 1 moonstone from 1 rough metal and 1 plastic
minetest.register_craft({
    output = "scifi_nodes:rock",
    recipe = {
        {"scifi_nodes:rough", "scifi_nodes:white2"}
    }
})

-- 1 moonstone2 from 1 rough metal and 1 plastic
minetest.register_craft({
    output = "scifi_nodes:rock2",
    recipe = {
        {"scifi_nodes:rough"},
        {"scifi_nodes:white2"}
    }
})

-- 6 glass screen from 1 plastic, 1 dark glass, 1 green dye
minetest.register_craft({
    output = "scifi_nodes:glassscreen 6",
    recipe = {
        {"scifi_nodes:glass", "scifi_nodes:light_dynamic"},
        {"dye:green", "scifi_nodes:white2"}
    }
})

-- 4 purple wall light from 4 purple tiles, 4 cyan dye and 1 wall light
minetest.register_craft({
    output = "scifi_nodes:ppllght 4",
    recipe = {
        {"scifi_nodes:pplblk", "dye:cyan", "scifi_nodes:pplblk"},
        {"dye:cyan", "scifi_nodes:light_dynamic", "dye:cyan"},
        {"scifi_nodes:pplblk", "dye:cyan", "scifi_nodes:pplblk"}
    }
})

-- 1 orange lightbars from 4 lightbar, 1 orange dye
minetest.register_craft({
    output = "scifi_nodes:lightbars",
    recipe = {
        {"scifi_nodes:lightbar", "", "scifi_nodes:lightbar"},
        {"", "dye:orange", ""},
        {"scifi_nodes:lightbar", "", "scifi_nodes:lightbar"}
    }
})

-- 4 liquid pipe from 2 dark  glass, 2 green dye, 1 wall light
minetest.register_craft({
    output = "scifi_nodes:liquid_pipe 4",
    recipe = {
        {"", "dye:green", ""},
        {"scifi_nodes:glass", "scifi_nodes:light_dynamic", "scifi_nodes:glass"},
        {"", "dye:green", ""}
    }
})

-- 4 liquid pipe2 from 2 dark glass, 4 orange dye, 1 wall light
minetest.register_craft({
    output = "scifi_nodes:liquid_pipe2 4",
    recipe = {
        {"dye:orange", "", "dye:orange"},
        {"scifi_nodes:glass", "scifi_nodes:light_dynamic", "scifi_nodes:glass"},
        {"dye:orange", "", "dye:orange"}
    }
})

-- 1 metal plant pot from 1 greybolts and 1 clean glass
minetest.register_craft({
    output = "scifi_nodes:pot",
    recipe = {
        {"moreblocks:clean_glass"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})

-- 6 itemholder from 2 dented metal block and 1 plastic
minetest.register_craft({
    output = "scifi_nodes:itemholder 6",
    recipe = {
        {"scifi_nodes:dent"},
        {"scifi_nodes:white2"},
        {"scifi_nodes:dent"}
    }
})

-- FEW SLOPES (will be making more when respective block recipe will be ready)

-- 6 plastic slope from 3 plastic
minetest.register_craft({
    output = "scifi_nodes:slope_white2 6",
    recipe = {
        {"scifi_nodes:white2", ""},
        {"scifi_nodes:white2","scifi_nodes:white2"}
    }
})

-- 6 white slope from 3 plastic wall
minetest.register_craft({
    output = "scifi_nodes:slope_white 6",
    recipe = {
        {"scifi_nodes:white", ""},
        {"scifi_nodes:white","scifi_nodes:white"}
    }
})

-- 6 black slope from 3 black wall
minetest.register_craft({
    output = "scifi_nodes:slope_black 6",
    recipe = {
        {"scifi_nodes:black", ""},
        {"scifi_nodes:black","scifi_nodes:black"}
    }
})

-- 6 blue light box slope from 3 blue light box
minetest.register_craft({
    output = "scifi_nodes:slope_blight 6",
    recipe = {
        {"scifi_nodes:light", ""},
        {"scifi_nodes:light","scifi_nodes:light"}
    }
})

-- 6 blue light box slope from 3 blue light box
minetest.register_craft({
    output = "scifi_nodes:slope_rlight 6",
    recipe = {
        {"scifi_nodes:red_light", ""},
        {"scifi_nodes:red_light","scifi_nodes:red_light"}
    }
})

-- 6 blue light box slope from 3 blue light box
minetest.register_craft({
    output = "scifi_nodes:slope_glight 6",
    recipe = {
        {"scifi_nodes:green_light", ""},
        {"scifi_nodes:green_light","scifi_nodes:green_light"}
    }
})

-- 6 blue light2 slopes from 3 blue wall light
minetest.register_craft({
    output = "scifi_nodes:slope_blight2 6",
    recipe = {
        {"scifi_nodes:bluwllight", ""},
        {"scifi_nodes:bluwllight","scifi_nodes:bluwllight"}
    }
})

-- 6 blue slope from 3 blue bars
minetest.register_craft({
    output = "scifi_nodes:slope_bluebars 6",
    recipe = {
        {"scifi_nodes:bluebars", ""},
        {"scifi_nodes:bluebars","scifi_nodes:bluebars"}
    }
})

-- 6 lightstripe slope from 3 twin lights
minetest.register_craft({
    output = "scifi_nodes:slope_lightstripe 6",
    recipe = {
        {"scifi_nodes:lightstp", ""},
        {"scifi_nodes:lightstp","scifi_nodes:lightstp"}
    }
})

-- 6 metal floormesh slope from 3 metal floormesh
minetest.register_craft({
    output = "scifi_nodes:slope_mesh2 6",
    recipe = {
        {"scifi_nodes:mesh2", ""},
        {"scifi_nodes:mesh2","scifi_nodes:mesh2"}
    }
})

-- 6 metal mesh slope from 3 metal mesh
minetest.register_craft({
    output = "scifi_nodes:slope_mesh 6",
    recipe = {
        {"scifi_nodes:mesh", ""},
        {"scifi_nodes:mesh","scifi_nodes:mesh"}
    }
})

-- 6 stripes slope from 3 hazard stripes
minetest.register_craft({
    output = "scifi_nodes:slope_stripes 6",
    recipe = {
        {"scifi_nodes:stripes", ""},
        {"scifi_nodes:stripes","scifi_nodes:stripes"}
    }
})

-- 6 vent slope from 3 vent
minetest.register_craft({
    output = "scifi_nodes:slope_vent 6",
    recipe = {
        {"scifi_nodes:vent2", ""},
        {"scifi_nodes:vent2","scifi_nodes:vent2"}
    }
})

-- 6 purple slope from 3 purple node
minetest.register_craft({
    output = "scifi_nodes:slope_purple 6",
    recipe = {
        {"scifi_nodes:purple", ""},
        {"scifi_nodes:purple","scifi_nodes:purple"}
    }
})

-- 6 green metal slope from 3 green metal
minetest.register_craft({
    output = "scifi_nodes:slope_greenmetal 6",
    recipe = {
        {"scifi_nodes:greenmetal", ""},
        {"scifi_nodes:greenmetal","scifi_nodes:greenmetal"}
    }
})

-- 6 grey slope from 3 grey wall
minetest.register_craft({
    output = "scifi_nodes:slope_grey 6",
    recipe = {
        {"scifi_nodes:grey", ""},
        {"scifi_nodes:grey","scifi_nodes:grey"}
    }
})

-- 6 blue metal slope from 3 blue metal
minetest.register_craft({
    output = "scifi_nodes:slope_bluemetal 6",
    recipe = {
        {"scifi_nodes:bluemetal", ""},
        {"scifi_nodes:bluemetal","scifi_nodes:bluemetal"}
    }
})

-- 6 metal wall slope from 3 metal wall
minetest.register_craft({
    output = "scifi_nodes:slope_wall 6",
    recipe = {
        {"scifi_nodes:wall", ""},
        {"scifi_nodes:wall","scifi_nodes:wall"}
    }
})

-- 6 rough metal slope from 3 rough metal
minetest.register_craft({
    output = "scifi_nodes:slope_rough 6",
    recipe = {
        {"scifi_nodes:rough", ""},
        {"scifi_nodes:rough","scifi_nodes:rough"}
    }
})

-- 6 black stripe light slope from 3 black stripe light
minetest.register_craft({
    output = "scifi_nodes:slope_blklt2 6",
    recipe = {
        {"scifi_nodes:blklt2", ""},
        {"scifi_nodes:blklt2","scifi_nodes:blklt2"}
    }
})

-- https://forum.minetest.net/viewtopic.php?f=10&t=13125&p=261481#p261481
minetest.register_craft({
    output = 'scifi_nodes:windowpanel 4',
    recipe = {
        {"scifi_nodes:glass","",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:powered_stand",
    recipe = {
        {"", "default:junglewood", ""},
        {"default:fence_junglewood", "default:fence_junglewood", "default:fence_junglewood"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:door3a 2",
    recipe = {
        {"scifi_nodes:white2", "scifi_nodes:white2", ""},
        {"scifi_nodes:white2", "scifi_nodes:white2", "scifi_nodes:white_pad"},
	{"scifi_nodes:white2", "scifi_nodes:white2", ""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:door4a 2",
    recipe = {
        {"scifi_nodes:doomwall2"},
        {"scifi_nodes:doomwall2"},
	{"scifi_nodes:doomwall2"}
    }
})

--[[
-- 1 metal plant pot from 1 greybolts and 1 clean glass
minetest.register_craft({
    output = "scifi_nodes:pot",
    recipe = {
        {"moreblocks:clean_glass"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})
]]--

minetest.register_craft({
    output = "scifi_nodes:flower1",
    recipe = {
        {"flowers:viola"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:flower2",
    recipe = {
        {"flowers:dandelion_white","flowers:rose"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:flower3",
    recipe = {
        {"flowers:mushroom_brown"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:flower4",
    recipe = {
        {"flowers:viola","default:junglegrass"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:plant1",
    recipe = {
        {"flowers:geranium"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:plant2",
    recipe = {
        {"flowers:mushroom_red","default:grass_1"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant3",
    recipe = {
        {"flowers:geranium","default:grass_1","flowers:geranium"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant4",
    recipe = {
        {"flowers:dandelion_white","default:grass_1","flowers:dandelion_white"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:plant5",
    recipe = {
        {"default:grass_1"},
        {"default:dirt"},
        {"scifi_nodes:greybolts"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:plant6",
    recipe = {
        {"flowers:viola","default:grass_1"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:plant7",
    recipe = {
        {"flowers:mushroom_brown","default:grass_1","flowers:mushroom_brown"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant8",
    recipe = {
        {"flowers:viola","default:junglegrass"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant9",
    recipe = {
        {"flowers:viola","default:grass_1","flowers:dandelion"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant10",
    recipe = {
        {"default:grass_1","flowers:dandelion","default:grass_1"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:grassblk",
    recipe = {
        {"default:grass_1","default:junglegrass","default:grass_1"},
        {"","default:dirt",""},
        {"","scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:grass",
    recipe = {
        {"default:grass_1","default:junglegrass"},
        {"default:dirt",""},
        {"scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:egg",
    recipe = {
        {"default:clay_lump","default:clay_lump","default:clay_lump"},
        {"default:clay_lump","dye:blue","default:clay_lump"},
        {"default:clay_lump","default:clay_lump","default:clay_lump"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:eyetree",
    recipe = {
        {"scifi_nodes:egg"},
        {"default:sapling"},
        {"scifi_nodes:greybolts"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:gloshroom",
    recipe = {
        {"default:grass_1","flowers:mushroom_red"},
        {"default:tin_ingot",""},
        {"scifi_nodes:greybolts",""}
    }
})


minetest.register_craft({
    output = "scifi_nodes:plant_trap",
    recipe = {
        {"vessels:drinking_glass","scifi_nodes:lightbars"},
        {"scifi_nodes:greybolts",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:gblock 3",
    recipe = {
        {"dye:white","scifi_nodes:greenmetal","dye:green"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:gblock2 4",
    recipe = {
        {"scifi_nodes:disc","scifi_nodes:disc","scifi_nodes:disc"},
        {"","scifi_nodes:gblock",""}
    }
})

minetest.register_craft({
    output = "scifi_nodes:gblock3",
    recipe = {
        {"default:sign_wall_wood"},
        {"scifi_nodes:gblock"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:bluegrid 4",
    recipe = {
        {"scifi_nodes:bluemetal","", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal","default:obsidian_glass", "scifi_nodes:bluemetal"},
        {"scifi_nodes:bluemetal","", "scifi_nodes:bluemetal"},
    }
})

minetest.register_craft({
    output = "scifi_nodes:red 4",
    recipe = {
        {"scifi_nodes:blackplate","", "scifi_nodes:blackplate"},
        {"","dye:red",""},
        {"scifi_nodes:blackplate","", "scifi_nodes:blackplate"}
    }
})

minetest.register_craft({
    output = "scifi_nodes:wallpipe 3",
    recipe = {
        {"default:papyrus","scifi_nodes:grnpipe", "scifi_nodes:liquid_pipe"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall41 6',
    recipe = {
        {"scifi_nodes:white","dye:blue","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","dye:blue","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall42 6',
    recipe = {
        {"scifi_nodes:white","dye:black","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","dye:yellow","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall43 6',
    recipe = {
        {"scifi_nodes:white","dye:black","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","dye:yellow","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall43 6',
    recipe = {
        {"scifi_nodes:white","scifi_nodes:white","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall431 6',
    recipe = {
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","scifi_nodes:white","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall44 6',
    recipe = {
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:doomwall44 6',
    recipe = {
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"},
        {"scifi_nodes:black","dye:dark_green","scifi_nodes:black"},
        {"scifi_nodes:white","default:grass_1","scifi_nodes:white"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:pipe 8',
    recipe = {
        {"scifi_nodes:greenmetal","scifi_nodes:vent2","scifi_nodes:greenmetal"},
        {"scifi_nodes:greenmetal","","scifi_nodes:greenmetal"},
        {"scifi_nodes:greenmetal","scifi_nodes:vent2","scifi_nodes:greenmetal"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:pipeside 8',
    recipe = {
        {"scifi_nodes:greenmetal","scifi_nodes:greenmetal","scifi_nodes:greenmetal"},
        {"scifi_nodes:vent2","","scifi_nodes:vent2"},
        {"scifi_nodes:greenmetal","scifi_nodes:greenmetal","scifi_nodes:greenmetal"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:computer',
    recipe = {
        {"default:bookshelf","default:diamond","default:copper_ingot"},
        {"","scifi_nodes:black_lights",""}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:cover',
    recipe = {
        {"scifi_nodes:dent","default:wood","scifi_nodes:dent"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:pipen',
    recipe = {
        {"scifi_nodes:black","","scifi_nodes:black"},
        {"scifi_nodes:black","scifi_nodes:vent2","scifi_nodes:black"},
        {"scifi_nodes:black","","scifi_nodes:black"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:alienslope 6',
    recipe = {
        {"scifi_nodes:screen3",""},
        {"scifi_nodes:grnpipe","scifi_nodes:vent2"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:stripes2top 3',
    recipe = {
        {"scifi_nodes:black","scifi_noedes:black","scifi_nodes:black"},
        {"default:silver_sand","default:silver_sand","default:silver_sand"}
    }
})

minetest.register_craft({
    output = 'scifi_nodes:stripes2 2',
    recipe = {
        {"scifi_nodes:stripes2top"},
        {"scifi_nodes:stripes"}
    }
})

