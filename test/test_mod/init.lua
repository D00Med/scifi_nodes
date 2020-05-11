
minetest.log("warning", "[TEST] integration-test enabled!")

-- those mods have to be present
local assert_mods = {
	"scifi_nodes"
}

-- those nodes have to be present
local assert_nodes = {
	"scifi_nodes:crate",
	"scifi_nodes:door1a"
}

minetest.register_on_mods_loaded(function()
	minetest.after(0, function()
		-- check mods
		for _, modname in ipairs(assert_mods) do
			if not minetest.get_modpath(modname) then
				error("Mod not present: " .. modname)
			end
		end

		-- check nodes
		for _, nodename in ipairs(assert_nodes) do
			if not minetest.registered_nodes[nodename] then
				error("Node not present: " .. nodename)
			end
		end

		local data = minetest.write_json({ success = true }, true);
		local file = io.open(minetest.get_worldpath().."/integration_test.json", "w" );
		if file then
			file:write(data)
			file:close()
		end
		minetest.request_shutdown("success")

	end)
end)
