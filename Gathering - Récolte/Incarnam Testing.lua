---------------------------------------------
-- Script by Broil aka amrm121
---------------------------------------------
--trying to get away lul 
---------------------------------------------

MAX_PODS = 90
OPEN_BAGS = true 

MIN_MONSTERS = 1
MAX_MONSTERS = 3

GATHER = { 38 }
-- Trigo 38 (Blé - Wheat (lv 0 paysan))

AUTO_DELETE = {  }
 -- l -1,0 r +1,0 u 0,-1 b 0,+1
function move() --inca camps
	return {
		{ map="-2,-3", gather = true, path = "top" }, --Incarnam out temple
		{ map="-2,-4", gather = true, path = "top" }, -- 8 trigo
		{ map="-2,-5", gather = true, path = "left" }, -- 12 trigo
		{ map="-3,-5", gather = true, path = "top" }, -- 7 trigo
		{ map="-3,-6", path = "right" },
		{ map="-2,-6", gather = true, path = "right" }, -- 10 trigo 
		{ map="-1,-6", gather = true, path = "bottom" }, -- 8 trigo
		{ map="-1,-5", gather = true, path = "right" }, -- 12 trigo
		{ map="0,-5", gather = true, path = "bottom" }, -- 1 orgtiga 2 trigo
		{ map="0,-4", battle = true, path = "left" }, -- LUTA CARAIO
		{ map="-1,-4", gather = true, path = "bottom" }, --11 trigo
		{ map="-1,-3", gather = true, path = "bottom" }, --ZAAP

		--{ map="-3,-7", gather = true, path = "right" },
		--{ map="-76,-42", path = "top" },
		--{ map="-72,-51", gather = true, path = "top" },
		--{ map="-63,-54", gather = true, path = "top" },
		--{ map="-63,-55", gather = true, path = "left" },
		--{ map="-64,-55", gather = true, path = "left" },
		--{ map="-65,-55", gather = true, path = "left" },
		--{ map="-66,-55",  path = "left" },
		--{ map="-67,-55", gather = true, path = "bottom" },
		--{ map="-72,-53", gather = true, path = "bottom" },
		--{ map = "54534165", path = "424" },
	}
end

--function bank()
	--return {
		--{ map="-76,-41", path = "left" },
		--{ map="-76,-42", path = "bottom" },
		--{ map="-76,-43", path = "bottom" },
		--{ map="-76,-44", path = "bottom" },
		--{ map="-76,-45", path = "bottom" },

		--{ map = "54172457", door = "358" },
		--{ map = "54534165", npcBank = true, path = "424" },
	--}
--end
