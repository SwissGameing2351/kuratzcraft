local bg = "bg_emoji.png"
local form = "size[10,7.8] bgcolor[#333444cc; false] image_button_exit[0,0;2,2;"..bg.."^1_emoji.png;1_emoji;] image_button_exit[2,0;2,2;"..bg.."^2_emoji.png;2_emoji;] image_button_exit[4,0;2,2;"..bg.."^3_emoji.png;3_emoji;]"

minetest.register_chatcommand("e", {
	params = "",
	description = "Emoji",
	privs = {},
	func = function(name, param)

		minetest.show_formspec(name, "emoji_form", form)
	
	end,
})

local v = {
	{"1_emoji", "terry"},
	{"2_emoji", "bear"},
	{"3_emoji", "child"},
	
}

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname=="emoji_form" then

		local pos = player:get_pos()
		
		for _, v in pairs(v) do

				if fields[v[1]] then

					minetest.add_particlespawner(
						1, --amount
						0.01, --time
						{x=pos.x, y=pos.y+2, z=pos.z}, --minpos
						{x=pos.x, y=pos.y+2, z=pos.z}, --maxpos
						{x=0, y=0.15, z=0}, --minvel
						{x=0, y=0.15, z=0}, --maxvel
						{x=0,y=0,z=0}, --minacc
						{x=0,y=0,z=0}, --maxacc
						4.5, --minexptime
						4.5, --maxexptime
						9, --minsize
						9, --maxsize
						false, --collisiondetection
						v[1]..".png"
					)

				end	
		end

	end
end)



minetest.register_on_chat_message(function(name, message, pos)    
	local checkingmessage=( name.." "..message .." " )

	for _, v in pairs(v) do
		if string.find(checkingmessage, v[2], 1, true) ~=nil then

			local player = minetest.get_player_by_name(name)
			
			local pos = player:get_pos()
			
			minetest.add_particlespawner(
				1, --amount
				0.01, --time
				{x=pos.x, y=pos.y+2, z=pos.z}, --minpos
				{x=pos.x, y=pos.y+2, z=pos.z}, --maxpos
				{x=0, y=0.15, z=0}, --minvel
				{x=0, y=0.15, z=0}, --maxvel
				{x=0,y=0,z=0}, --minacc
				{x=0,y=0,z=0}, --maxacc
				4.5, --minexptime
				4.5, --maxexptime
				9, --minsize
				9, --maxsize
				false, --collisiondetection
				v[1]..".png"
			)
			
		end
	
	end	
		
end)






