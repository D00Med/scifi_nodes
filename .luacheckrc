unused_args = false
max_line_length = 180

globals = {
	"scifi_nodes"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"vector", "ItemStack",
	"dump",

	-- optional deps
	"default",
	"stairsplus",
	"xpanes",
	"screwdriver",
	"minetest",
	"mesecon",
	"unifieddyes",
	"letters"
}
