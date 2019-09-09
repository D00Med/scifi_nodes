unused_args = false
allow_defined_top = true

globals = {
	"minetest",
	"mesecon"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"vector", "ItemStack",
	"dump",

	-- optional deps
	"default", "stairsplus", "xpanes", "screwdriver"

}
