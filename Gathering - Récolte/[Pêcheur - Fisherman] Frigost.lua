---------------------------------------------
-- Script by Broil aka amrm121
---------------------------------------------
-- Type : Récolte / Gathering 
-- Zone : Frigost
-- Start at : Frigost Zaap 
-- Job : Fisherman / Pêcheur
---------------------------------------------


---------------------------------------------
-- Functions:
-- 100 % AFK - Banking - Don't forget to setup fighting
-- Fishes: Bar Rikain - Perche - Carpe d'Iem - Tanche - Anguille - Poisskaille
---------------------------------------------

MAX_PODS = 95
OPEN_BAGS = true 

-- Open the drop bags auto and set 95% of total pods to return bank.

GATHER = { 79, 265, 271, 273, 132, 267 }

function move()
	return {
		{ map="-78,-41", path = "right" },
		{ map = "54172457", path = "top" },
		{ map="-77,-42", path = "right" },
		{ map="-76,-42", path = "top" },
		{ map="-76,-43", path = "top" },
		{ map="-76,-44", path = "top" },
		{ map="-76,-45", path = "top" },
		{ map="-76,-46", path = "top" },
		{ map="-72,-50", path = "top" },
		{ map="-72,-49", path = "top" },
		{ map="-72,-48", path = "top" },
		{ map="-72,-47", path = "top" },
		{ map="-76,-47", path = "right" },
		{ map="-75,-47", path = "right" },
		{ map="-74,-47", path = "right" },
		{ map="-73,-47", path = "right" },
		{ map="-72,-51", gather = true, path = "top" },
		{ map="-72,-52", gather = true, path = "right" },
		{ map="-71,-52", gather = true, path = "bottom" },
		{ map="-71,-51", gather = true, path = "right" },
		{ map="-70,-51", gather = true, path = "bottom" },
		{ map="-70,-50", gather = true, path = "bottom" },
		{ map="-70,-49", path = "right" },
		{ map="-69,-49", gather = true, path = "top" },
		{ map="-69,-50", gather = true, path = "top" },
		{ map="-69,-51", gather = true, path = "right" },
		{ map="-68,-51", gather = true, path = "top" },
		{ map="-68,-52", gather = true, path = "top" },
		{ map="-68,-53", gather = true, path = "right" },
		{ map="-67,-53", gather = true, path = "right" },
		{ map="-66,-53", gather = true, path = "top" },
		{ map="-66,-54", path = "right" },
		{ map="-65,-54", path = "right" },
		{ map="-64,-54", path = "down" },
		{ map="-64,-53", path = "right" },
		{ map="-63,-53", path = "top" },
		{ map="-63,-54", gather = true, path = "top" },
		{ map="-63,-55", gather = true, path = "left" },
		{ map="-64,-55", gather = true, path = "left" },
		{ map="-65,-55", gather = true, path = "left" },
		{ map="-66,-55",  path = "left" },
		{ map="-67,-55", gather = true, path = "bottom" },
		{ map="-67,-54", gather = true, path = "left" },
		{ map="-68,-54", gather = true, path = "left" },
		{ map="-69,-54", gather = true, path = "left" },
		{ map="-70,-54", gather = true, path = "left" },
		{ map="-71,-54", gather = true, path = "left" },
		{ map="-72,-54", gather = true, path = "bottom" },
		{ map="-72,-53", gather = true, path = "bottom" },
		{ map = "54534165", path = "424" },
	}
end

function bank()
	return {
		{ map="-76,-41", path = "left" },
		{ map="-76,-42", path = "bottom" },
		{ map="-76,-43", path = "bottom" },
		{ map="-76,-44", path = "bottom" },
		{ map="-76,-45", path = "bottom" },
		{ map="-76,-46", path = "bottom" },
		{ map="-72,-50", path = "bottom" },
		{ map="-72,-49", path = "bottom" },
		{ map="-72,-48", path = "bottom" },
		{ map="-72,-47", path = "left" },
		{ map="-76,-47", path = "bottom" },
		{ map="-75,-47", path = "left" },
		{ map="-74,-47", path = "left" },
		{ map="-73,-47", path = "left" },
		{ map="-72,-51", path = "bottom" },
		{ map="-72,-52", path = "bottom" },
		{ map="-71,-52", path = "left" },
		{ map="-71,-51", path = "left" },
		{ map="-70,-51", path = "left" },
		{ map="-70,-50", path = "left" },
		{ map="-69,-50", path = "left" },
		{ map="-69,-51", path = "left" },
		{ map="-68,-51", path = "left" },
		{ map="-68,-52", path = "left" },
		{ map="-68,-53", path = "left" },
		{ map="-67,-53", path = "left" },
		{ map="-66,-53", path = "left" },
		{ map="-65,-53", path = "left" },
		{ map="-64,-53", path = "left" },
		{ map="-63,-53", path = "left" },
		{ map="-63,-54", path = "left" },
		{ map="-63,-55", path = "left" },
		{ map="-64,-55", path = "left" },
		{ map="-65,-55", path = "left" },
		{ map="-66,-55", path = "left" },
		{ map="-67,-55", path = "bottom" },
		{ map="-67,-54", path = "left" },
		{ map="-68,-54", path = "left" },
		{ map="-69,-54", path = "left" },
		{ map="-70,-54", path = "left" },
		{ map="-71,-54", path = "left" },
		{ map="-72,-54", path = "bottom" },
		{ map="-72,-53", path = "bottom" },
		{ map="-64,-54", path = "left" },
		{ map="-65,-54", path = "left" },
		{ map="-66,-54", path = "left" },
		{ map="-69,-52", path = "left" },
		{ map="-69,-53", path = "left" },
		{ map="-70,-53", path = "left" },
		{ map="-70,-52", path = "left" },
		{ map="-71,-50", path = "left" },
		{ map="-71,-53", path = "left" },
		{ map = "54172457", door = "358" },
		{ map = "54534165", npcBank = true, path = "424" },
	}
end
