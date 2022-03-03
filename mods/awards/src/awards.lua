local S = awards.gettext

awards.register_award("awards_death", {
	title = S("Death"),
	description = S("Get destroyed for the first time"),
	icon = "awards_death.png",
	trigger = {
		type = "death",
		target = 1
	},
})

awards.register_award("awards_death2", {
	title = S("Demise"),
	description = S("Get destroyed for the 10th time"),
	icon = "awards_death2.png",
	trigger = {
		type = "death",
		target = 10
	},
})

awards.register_award("awards_death3", {
	title = S("Expiry"),
	description = S("Get destroyed for the 25th time"),
	icon = "awards_death3.png",
	trigger = {
		type = "death",
		target = 25
	},
})

awards.register_award("awards_death4", {
	title = S("Passing"),
	description = S("Get destroyed for the 50th time"),
	icon = "awards_death4.png",
	trigger = {
		type = "death",
		target = 50
	},
})

awards.register_award("awards_death5", {
	title = S("Murder"),
	description = S("Get destroyed for the 100th time"),
	icon = "awards_death5.png",
	trigger = {
		type = "death",
		target = 100
	},
})

awards.register_award("awards_death6", {
	title = S("Eternal rest"),
	description = S("Get destroyed for the 250th time"),
	icon = "awards_death6.png",
	trigger = {
		type = "death",
		target = 250
	},
})

awards.register_award("awards_fall", {
	title = S("Fall"),
	description = S("Fall to death 5 times"),
	icon = "awards_fall.png",
	trigger = {
		type = "death",
		reason = "fall",
		target = 5
	},
})

awards.register_award("awards_place", {
	title = S("100 nodes"),
    	description = "Place 100 nodes",
	icon = "awards_icon.png",
    	trigger = {
        	type   = "place",
        	target = 100
    	},
})

awards.register_award("awards_place2", {
	title = S("250 nodes"),
    	description = "Place 250 nodes",
	icon = "awards_icon2.png",
    	trigger = {
        	type   = "place",
        	target = 250
    	},
})

awards.register_award("awards_place3", {
	title = S("500 nodes"),
    	description = "Place 500 nodes",
	icon = "awards_icon3.png",
    	trigger = {
        	type   = "place",
        	target = 500
    	},
})

awards.register_award("awards_place4", {
	title = S("1000 nodes"),
    	description = "Place 1000 nodes",
	icon = "awards_icon4.png",
    	trigger = {
        	type   = "place",
        	target = 1000
    	},
})

awards.register_award("awards_place5", {
	title = S("2500 nodes"),
    	description = "Place 2500 nodes",
	icon = "awards_icon5.png",
    	trigger = {
        	type   = "place",
        	target = 2500
    	},
})

awards.register_award("awards_place6", {
	title = S("5000 nodes"),
    	description = "Place 5000 nodes",
	icon = "awards_icon6.png",
    	trigger = {
        	type   = "place",
        	target = 5000
    	},
})

awards.register_award("awards_dig", {
	title = S("100 digs"),
    	description = "Dig 100 nodes",
	icon = "awards_icon.png",
    	trigger = {
        	type   = "dig",
        	target = 100
    	},
})

awards.register_award("awards_dig2", {
	title = S("250 digs"),
    	description = "Dig 250 nodes",
	icon = "awards_icon2.png",
    	trigger = {
        	type   = "dig",
        	target = 250
    	},
})

awards.register_award("awards_dig3", {
	title = S("500 digs"),
    	description = "Dig 500 nodes",
	icon = "awards_icon3.png",
    	trigger = {
        	type   = "dig",
        	target = 500
    	},
})

awards.register_award("awards_dig4", {
	title = S("1000 digs"),
    	description = "Dig 1000 nodes",
	icon = "awards_icon4.png",
    	trigger = {
        	type   = "dig",
        	target = 1000
    	},
})

awards.register_award("awards_dig5", {
	title = S("2500 digs"),
    	description = "Dig 2500 nodes",
	icon = "awards_icon5.png",
    	trigger = {
        	type   = "dig",
        	target = 2500
    	},
})

awards.register_award("awards_dig6", {
	title = S("5000 digs"),
    	description = "Dig 5000 nodes",
	icon = "awards_icon6.png",
    	trigger = {
        	type   = "dig",
        	target = 5000
    	},
})

awards.register_award("awards_chat", {
	title = S("25 chats"),
    	description = "Chat for the 25th time",
	icon = "awards_chat.png",
    	trigger = {
        	type   = "chat",
        	target = 25
    	},
})

awards.register_award("awards_chat1", {
	title = S("50 chats"),
    	description = "Chat for the 50th time",
	icon = "awards_chat2.png",
    	trigger = {
        	type   = "chat",
        	target = 50
    	},
})

awards.register_award("awards_chat2", {
	title = S("100 chats"),
    	description = "Chat for the 100th time",
	icon = "awards_chat3.png",
    	trigger = {
        	type   = "chat",
        	target = 100
    	},
})

awards.register_award("awards_chat3", {
	title = S("250 chats"),
    	description = "Chat for the 250th time",
	icon = "awards_chat4.png",
    	trigger = {
        	type   = "chat",
        	target = 250
    	},
})

awards.register_award("awards_chat4", {
	title = S("500 chats"),
    	description = "Chat for the 500th time",
	icon = "awards_chat5.png",
    	trigger = {
        	type   = "chat",
        	target = 500
    	},
})

awards.register_award("awards_chat5", {
	title = S("1000 chats"),
    	description = "Chat for the 1000th time",
	icon = "awards_chat6.png",
    	trigger = {
        	type   = "chat",
        	target = 1000
    	},
})

awards.register_award("awards_craft", {
	title = S("50 crafts"),
    	description = "Craft 50 items",
	icon = "awards_craft.png",
    	trigger = {
        	type   = "craft",
        	target = 50
    	},
})

awards.register_award("awards_medkit", {
	title = S("Medic"),
    	description = "Craft 10 first aid kits",
	icon = "awards_medkit.png",
    	trigger = {
        	type   = "craft",
		item   = "firstaid:firstaidnormal",
        	target = 10
    	},
})

awards.register_award("awards_medkit2", {
	title = S("Doctor"),
    	description = "Craft 10 advanced first aid kits",
	icon = "awards_medkit2.png",
    	trigger = {
        	type   = "craft",
		item   = "firstaid:firstaidadvanced",
        	target = 10
    	},
})

awards.register_award("awards_medkit3", {
	title = S("Life-Giver"),
    	description = "Craft 10 very advanced first aid kits",
	icon = "awards_medkit3.png",
    	trigger = {
        	type   = "craft",
		item   = "firstaid:firstaidveryadvanced",
        	target = 10
    	},
})

awards.register_award("awards_craft1", {
	title = S("100 crafts"),
    	description = "Craft 100 items",
	icon = "awards_craft2.png",
    	trigger = {
        	type   = "craft",
        	target = 100
    	},
})

awards.register_award("awards_craft2", {
	title = S("250 crafts"),
    	description = "Craft 250 items",
	icon = "awards_craft3.png",
    	trigger = {
        	type   = "craft",
        	target = 250
    	},
})

awards.register_award("awards_craft3", {
	title = S("500 crafts"),
    	description = "Craft 500 items",
	icon = "awards_craft4.png",
    	trigger = {
        	type   = "craft",
        	target = 500
    	},
})

awards.register_award("awards_craft4", {
	title = S("1000 crafts"),
    	description = "Craft 1000 items",
	icon = "awards_craft5.png",
    	trigger = {
        	type   = "craft",
        	target = 1000
    	},
})

awards.register_award("awards_craft5", {
	title = S("1500 crafts"),
    	description = "Craft 1500 items",
	icon = "awards_craft6.png",
    	trigger = {
        	type   = "craft",
        	target = 1500
    	},
})

awards.register_award("awards_woodchest", {
	title = S("Wooden chestplate"),
    	description = "Craft one wooden chestplate armor",
	icon = "awards_armor.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_wood",
        	target = 1
    	},
})

awards.register_award("awards_cactuschest", {
	title = S("Cactus chestplate"),
    	description = "Craft one cactus chestplate armor",
	icon = "awards_armor6.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_cactus",
        	target = 1
    	},
})

awards.register_award("awards_swordbronze", {
	title = S("Bronze sword"),
    	description = "Craft one bronze sword",
	icon = "awards_fire3.png",
    	trigger = {
        	type   = "craft",
		item   = "default:sword_bronze",
        	target = 1
    	},
})

awards.register_award("awards_swordsteel", {
	title = S("Iron sword"),
    	description = "Craft one iron sword",
	icon = "awards_fire4.png",
    	trigger = {
        	type   = "craft",
		item   = "default:sword_steel",
        	target = 1
    	},
})

awards.register_award("awards_swordmese", {
	title = S("Mese sword"),
    	description = "Craft one mese sword",
	icon = "awards_fire5.png",
    	trigger = {
        	type   = "craft",
		item   = "default:sword_mese",
        	target = 1
    	},
})

awards.register_award("awards_sworddiamond", {
	title = S("Diamond sword"),
    	description = "Craft one diamond sword",
	icon = "awards_fire6.png",
    	trigger = {
        	type   = "craft",
		item   = "default:sword_diamond",
        	target = 1
    	},
})

awards.register_award("awards_steelchest", {
	title = S("Steel chestplate"),
    	description = "Craft one steel chestplate armor",
	icon = "awards_armor3.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_steel",
        	target = 1
    	},
})

awards.register_award("awards_goldchest", {
	title = S("Golden chestplate"),
    	description = "Craft one golden chestplate armor",
	icon = "awards_armor4.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_gold",
        	target = 1
    	},
})

awards.register_award("awards_diamondchest", {
	title = S("Diamond chestplate"),
    	description = "Craft one diamond chestplate armor",
	icon = "awards_armor5.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_diamond",
        	target = 1
    	},
})

awards.register_award("awards_bronzechest", {
	title = S("Bronze chestplate"),
    	description = "Craft one bronze chestplate armor",
	icon = "awards_armor2.png",
    	trigger = {
        	type   = "craft",
		item   = "3d_armor:chestplate_bronze",
        	target = 1
    	},
})

awards.register_award("awards_burn", {
		title = S("Burned"),
		description = S("Burn to death in a fire"),
		icon = "awards_burn.png",
	})
	awards.register_on_death(function(player,data)
		local pos = player:get_pos()
		if pos and (minetest.find_node_near(pos, 2, "fire:basic_flame") ~= nil or
			minetest.find_node_near(pos, 2, "fire:permanent_flame") ~= nil) then
			return "awards_burn"
		end
		return nil
	end)

awards.register_award("awards_lava", {
		title = S("Lava"),
		description = S("Burn to ashes in lava"),
		icon = "awards_lava.png"
	})
	awards.register_on_death(function(player,data)
		local pos = player:get_pos()
		if pos and (minetest.find_node_near(pos, 2, "default:lava_flowing") ~= nil or
				minetest.find_node_near(pos, 2, "default:lava_source") ~= nil) then
			return "awards_lava"
		end
		return nil
	end)

awards.register_award("awards_boom", {
	title = S("Explosion (not obtainable)"),
	description = S("Get obilerated by an explosion"),
	icon = "awards_rocket.png",
	trigger = {
		type = "death",
		reason = "tnt:boom",
		target = 1
	},
})
