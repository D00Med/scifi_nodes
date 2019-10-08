unused_args = false

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
	"mesecon"

}
