
function scifi_nodes.get_switch_rules(param2)
	-- param2 = 2
	local rules = {
		{x=1, y=-1, z=-1},
		{x=1, y=-1, z=1},
		{x=0, y=-1, z=-1},
		{x=0, y=-1, z=1},
	}

	-- Left and right when looking to +y ?
	if param2 == 3 then
		rules = mesecon.rotate_rules_right(mesecon.rotate_rules_right (rules))
	elseif param2 == 4 then
		rules = mesecon.rotate_rules_right(rules)
	elseif param2 == 5 then
		rules = mesecon.rotate_rules_left(rules)
	end
	return rules
end

scifi_nodes.slope_box = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

scifi_nodes.slope_box_simple = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, -0.25},
		{-0.5, -0.25, -0.25, 0.5,     0, 0},
		{-0.5,     0,     0, 0.5,  0.25, 0.25},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}
