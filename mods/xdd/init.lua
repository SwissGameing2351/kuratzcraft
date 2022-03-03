minetest.register_node("xdpack:windows", {
    description = "WindowsXP",
    tiles = {"windows.png"},
    groups = {cracky = 1}
})


minetest.register_node("xdpack:window", {
    description = "Windows",
    tiles = {"window.png"},
    groups = {cracky = 1}
})

minetest.register_node("xdpack:nitro", {
	description = ("Nitrous oxide"),
	tiles = {"nitro_side.png", "nitro_top.png", "nitro_bottom.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("xdpack:nuclear", {
	description = ("Radioactive waste"),
	tiles = {"nuclear_side.png", "nuclear_top.png", "nuclear_bottom.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("xdpack:kevlar", {
	description = ("Kevlar supply"),
	tiles = {"nuclear_side.png", "nuclear_top.png", "armory_bottom.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})
