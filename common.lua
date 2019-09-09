

scifi_nodes.get_switch_rules = function(param2)

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
