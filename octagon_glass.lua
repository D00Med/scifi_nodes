local has_unifieddyes_mod = minetest.get_modpath("unifieddyes")

local function register_glass(key, name)
    local tiles = {"scifi_nodes_" .. key .. ".png"}

    minetest.register_node("scifi_nodes:" .. key, {
        description = name .. " Octagon Glass",
        sunlight_propagates = true,
        drawtype = "glasslike",
        tiles = tiles,
        paramtype = "light",
        paramtype2 = "facedir",
        use_texture_alpha = "blend",
        light_source = 10,
        groups = {
            cracky = 2,
            dig_generic = 3
        },
        is_ground_content = false,
        sounds = scifi_nodes.node_sound_glass_defaults(),
    })
end

register_glass("octppl", "Purple")
register_glass("octbl", "Blue")
register_glass("octgrn", "Green")
register_glass("octrng", "Orange")
register_glass("octwht", "White")

if has_unifieddyes_mod then
	minetest.register_node("scifi_nodes:octwht", {
		description = "Octagon Glass",
		sunlight_propagates = true,
		drawtype = "glasslike",
		tiles = {
			"scifi_nodes_octwht.png",
		},
		palette = "unifieddyes_palette_extended.png",
		paramtype = "light",
		paramtype2 = "color",
		use_texture_alpha = "blend",
		light_source = 10,
		groups = {
			cracky = 2,
			dig_generic = 3,
			ud_param2_colorable = 1
		},
		is_ground_content = false,
		sounds = scifi_nodes.node_sound_glass_defaults(),
		on_construct = unifieddyes.on_construct,
		on_dig = unifieddyes.on_dig
	})
end