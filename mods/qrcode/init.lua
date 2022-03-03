qrencode = dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/qrencode.lua")

local function matrix_to_string(tab)
	local str_tab = {}
	for i=1,#tab + 2 do
		str_tab[i] = {"0"}
	end

	for x=1,#tab do
		for y=1,#tab do
			if tab[x][y] > 0 then
				str_tab[y + 1][x + 1] = "1"
			elseif tab[x][y] < 0 then
				str_tab[y + 1][x + 1] = "0"
			else
				str_tab[y + 1][x + 1] = " "
				str_tab[y + 1][x + 2] = "1"
			end
		end
	end

	local padding_string = {}
	for i=1,#tab do
		padding_string[i] = "0"
	end
	str_tab[1] = padding_string
	str_tab[#tab + 2] = padding_string

	for i=1,#tab + 2 do
		str_tab[i][#str_tab[i] + 1] = "0"
	end
	return str_tab
end

minetest.register_chatcommand("qrcode", {
	params = "<message>",
	description = "Creates QR Code.",
	privs = {server = true},
	func = function(name, message)
		local player = minetest.get_player_by_name(name)
		local pos = player:get_pos()
		pos.x = pos.x - 1
		pos.y = pos.y - 1
		pos.z = pos.z - 1
		local ok, tab_or_message = qrencode.qrcode(message)
		if not ok then
			print('Something went wrong')
		else
			local rows = matrix_to_string(tab_or_message)
			for x=1,#rows do
				for z=1,#rows do
					if rows[x][z] == "1" then
						minetest.set_node(vector.new(pos.x + x, pos.y, pos.z + z), { name = "wool:black" })
					elseif rows[x][z] == "0" then
						minetest.set_node(vector.new(pos.x + x, pos.y, pos.z + z), { name = "wool:white" })
					end
				end
			end
		end
	end
})
