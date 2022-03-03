minetest.register_tool("nokia:c201", {
	description = "Nokia C2-01",
	inventory_image = "c201.png",
	on_use = minetest.sound_play("nokia_ringtone.ogg", {player}, true)
})

minetest.register_tool("nokia:c201_dead", {
	description = "Nokia C2-01 with no batteries inside",
	groups = {lownokia = 1},
	inventory_image = "c201_dead.png"
})

minetest.register_tool("nokia:c201_lowbattery", {
	description = "Nokia C2-01 with low battery",
	groups = {lownokia = 1},
	inventory_image = "c201_dead2.png"
})

minetest.register_tool("nokia:battery1", {
	description = "BL-5C",
	inventory_image = "battery1.png"
})

minetest.register_craft({
	output = "nokia:c201",
	recipe = {
		{"group:lownokia", "nokia:battery1"}
	}
})

minetest.register_craft({
	output = "nokia:c201",
	recipe = {
		{"nokia:battery1", "group:lownokia"}
	}
})

minetest.register_craft({
	output = "nokia:c201_dead",
	recipe = {
		{"default:brick", "default:brick", "default:brick"},
		{"default:brick", "laptop:lcd", "default:brick"},
		{"default:brick", "default:brick", "default:brick"},
	}
})

minetest.register_craft({
	output = "nokia:battery1",
	recipe = {
		{"default:diamond", "default:diamond", "default:diamond"},
		{"default:diamond", "xdpack:nuclear", "default:diamond"},
		{"default:diamond", "default:diamond", "default:diamond"},
	}
})
