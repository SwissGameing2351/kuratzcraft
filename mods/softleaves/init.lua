--[[
    Soft leaves - Allows to walk through and to climb on leaves.
	Copyright © 2018, 2020 Hamlet and contributors.

	Licensed under the EUPL, Version 1.2 or – as soon they will be
	approved by the European Commission – subsequent versions of the
	EUPL (the "Licence");
	You may not use this work except in compliance with the Licence.
	You may obtain a copy of the Licence at:

	https://joinup.ec.europa.eu/software/page/eupl
	https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017D0863

	Unless required by applicable law or agreed to in writing,
	software distributed under the Licence is distributed on an
	"AS IS" basis,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
	implied.
	See the Licence for the specific language governing permissions
	and limitations under the Licence.

--]]


--
-- Global mod's namespace
--

soft_leaves = {}


--
-- Procedures
--

-- Local procedure for the default Minetest Game's nodes
local pr_Overrider = function()

	-- Constant
	local t_LEAF_NODES = {
		'default:acacia_bush_leaves',
		'default:acacia_leaves',
		'default:aspen_leaves',
		'default:blueberry_bush_leaves',
		'default:blueberry_bush_leaves_with_berries',
		'default:bush_leaves',
		'default:jungleleaves',
		'default:leaves',
		'default:pine_bush_needles',
		'default:pine_needles'
	}

	for i_element = 1, 10 do
		minetest.override_item(t_LEAF_NODES[i_element], {
			climbable = true,
			walkable = false
		})
	end

end


-- Minetest logger
local pr_LogMessage = function()

	-- Constant
	local s_LOG_LEVEL = minetest.settings:get('debug_log_level')

	-- Body
	if (s_LOG_LEVEL == nil)
	or (s_LOG_LEVEL == 'action')
	or (s_LOG_LEVEL == 'info')
	or (s_LOG_LEVEL == 'verbose')
	then
		minetest.log('action', '[Mod] Soft Leaves [v0.2.1] loaded.')
	end
end


-- Global procedure to allow third party mods to support soft leaves.
soft_leaves.overrider = function(nodestring)
	minetest.override_item(nodestring, {
		climbable = true,
		walkable = false
	})
end


--
-- Main body
--

pr_Overrider()
pr_LogMessage()
