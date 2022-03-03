math.randomseed(os.time())

minetest.register_tool("firstaid:firstaidnormal", {
	description = ("First Aid Kit"),
	inventory_image = "firstaidnormal.png",
	on_use = minetest.item_eat(7)
})

minetest.register_tool("firstaid:firstaidadvanced", {
	description = ("Advanced First Aid Kit"),
	inventory_image = "firstaidadvanced.png",
	on_use = minetest.item_eat(12)
})

minetest.register_tool("firstaid:firstaidveryadvanced", {
	description = ("Very Advanced First Aid Kit"),
	inventory_image = "firstaidveryadvanced.png",
	on_use = minetest.item_eat(20)
})

minetest.register_tool("firstaid:firstaidminimalistic", {
	description = ("Minimalistic First Aid Kit"),
	inventory_image = "firstaidminimalistic.png",
	on_use = minetest.item_eat(3)
})

minetest.register_tool("firstaid:firstaidweird", {
	description = ("Weird First Aid Kit"),
	inventory_image = "firstaidweird.png",
	on_use = minetest.item_eat(1)
})

minetest.register_node("firstaid:medicinesupply", {
	description = ("Medicine Supply Package"),
	tiles = {"medicinesupply_side.png", "medicinesupply_top.png", "medicinesupply_bottom.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	on_use = minetest.item_eat(16)
})

minetest.register_craft({
	output = "firstaid:firstaidnormal",
	recipe = {
		{"group:wood", "firstaid:firstaidminimalistic", "group:wood"},
		{"group:wood", "firstaid:firstaidminimalistic", "group:wood"},
		{"group:wood", "firstaid:firstaidminimalistic", "group:wood"},
	}
})

minetest.register_craft({
	output = "firstaid:firstaidnormal",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wool", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = "firstaid:medicinesupply 4",
	recipe = {
		{"firstaid:firstaidnormal", "firstaid:firstaidnormal"},
		{"firstaid:firstaidnormal", "firstaid:firstaidnormal"},
	}
})

minetest.register_craft({
	output = "firstaid:firstaidminimalistic",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "default:stick", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = "firstaid:firstaidadvanced",
	recipe = {
		{"group:wood", "firstaid:firstaidnormal", "group:wood"},
		{"group:wood", "firstaid:firstaidnormal", "group:wood"},
		{"group:wood", "firstaid:firstaidnormal", "group:wood"},
	}
})

minetest.register_craft({
	output = "firstaid:firstaidveryadvanced",
	recipe = {
		{"group:wood", "firstaid:firstaidadvanced", "group:wood"},
		{"group:wood", "firstaid:firstaidadvanced", "group:wood"},
		{"group:wood", "firstaid:firstaidadvanced", "group:wood"},
	}
})
