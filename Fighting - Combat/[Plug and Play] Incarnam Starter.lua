------------------------------------------------------------------------------------------------------
-- Ce trajet est un trajet plug'n'play permettant d'avoir un bot en pano aventurier au zaap astrub 	--
-- une fois les niveaux atteint et la pano aventurier totallement dropé et équipé					--
------------------------------------------------------------------------------------------------------

----------------------
-- Plug and Play. Just create the character, aftewards load the script and run.
-- The MAIN OBJECTIVE IS TO DROP THE COMPLETE ADVENTURER SET AND REACH lvlToReach. :)
-- Don't forget to setup the fighting.
-- The script is set by zones, each zone has the objective to drop each part of Adventurer Set.
----------------------


-- Global --
zone =0 -- definit la zone dans laquelle le perso va farmer (pour drop aventurier)
-- As said, the initial zone (0 default) to start dropping the adventurer set.

-- pour eviter de vouloir s'équiper 50 fois du même item
-- avoid keep trying to equip the same item again and again

amu = false
ano = false
cape = false
ceint =false
bottes = false
chap = false 

lvlToReach = 13 -- lvl a atteindre avant de descendre sur Astrub 
-- level to go to astrub 

------------
MIN_MONSTERS = 1
MAX_MONSTERS = 4
OPEN_BAGS = true -- Autorisation d'ouverture des sacs de récolte / open the gathering bags auto
-----------


function move()

	if character:level() >= 3 then
		if inventory:itemCount(2473)>=1 then
			zone =1
				if inventory:itemCount(2478)>=1 then
					zone =2
					if inventory:itemCount(2477)>=1 then
						zone =3
						if inventory:itemCount(2475)>=1 then
							zone =4
							if inventory:itemCount(2476)>=1 then
								zone =5
								if chap == true and  character:level() >= lvlToReach then
									zone =6
								end
							end	
						end	
					end			
				end
		end





	end
	global:printMessage("Zone : "..tostring(zone))
	if character:level() >= 7 and amu == false then --on equipe l'amulette / if enough level to equip amu
		if inventory:equipItem(2478, 0) == true then 
			global:printMessage("on s'équipe de l'amulette aventurier - Adventurer Amulet equipped.")
			amu = true
		end
		
	end
	
	if character:level() >= 8 and ano == false then --on equipe l'anneau / adventurer ring
		if inventory:equipItem(2475, 2) == true then 
			global:printMessage("on s'équipe de l'anneau aventurier - Adventurer Ring equipped.")
			ano = true
		end
	end
	
	if character:level() >= 9  and cape == false then --on equipe la cape / cloak
	
		if inventory:equipItem(2473, 7) == true then
			global:printMessage("on s'équipe de la cape aventurier - Adventurer Cloak equipped.")
			cape = true
		end
	end
	
	if character:level() >= 10 and ceint == false then -- on équipe la ceinture / belt
		if inventory:equipItem(2477, 3) == true then
			global:printMessage("on s'équipe de la ceinture aventurier - Adventurer Belt equipped.")
			ceint = true
		end
	end
	
	if character:level() >= 11 and bottes == false then -- on equipe les bottes / boots
		if inventory:equipItem(2476, 5) == true then
			global:printMessage("on s'équipe des bottes aventurier - Adventurer Boots equipped.")
			bottes = true
		end
	end
	
	if character:level() >= 12 and chap == false then -- on equipe le chapeau / and last but not least hat
		if inventory:equipItem(2474, 6) == true then
		global:printMessage("on s'équipe du chapeau aventurier - Finally our Adventurer Hat is equipped.")
		chap = true
		end
	end

	if zone == 0 then -- go route des ames / initial route of souls
		return ames() 
	elseif zone == 1 then -- go champs / so on and so forth...
		return champs()
	elseif zone == 2 then -- go lac
		return lac()
	elseif zone == 3 then -- go foret
		return foret()
	elseif zone == 4 then -- go paturage
		return paturage()
	elseif zone == 5 then -- go cimetiere
		return cimetiere()
	elseif zone == 6 then -- go astrub
		return goAstrub()
	end
	return null
end



function ames()
    return {
		{ map = "153092354", door = "409" },
		
		{ map = "152044547", path = "right" }, -- Iop
		{ map = "152043521", path = "right" }, -- Cra
		{ map = "152045573", path = "right" }, -- Sacrieur
		{ map = "152046593", path = "right" }, -- Eniripsa
		{ map = "152043523", path = "right" }, -- Osamodas
		{ map = "152046599", path = "right" }, -- Sram
		{ map = "152044553", path = "right" }, -- Ouginak
		{ map = "152046595", path = "right" }, -- Enutrof
		{ map = "152044545", path = "right" }, -- Ecaflip
		{ map = "152045575", path = "right" }, -- Steamer
		{ map = "152045571", path = "right" }, -- Feca
		{ map = "152043529", path = "right" }, -- Huppermage
		{ map = "152043527", path = "right" }, -- Zobal
		{ map = "152043525", path = "right" }, -- Pandawa
		{ map = "152045569", path = "right" }, -- Eliotrope
		{ map = "152046597", path = "right" }, -- Sadida
		{ map = "152044549", path = "right" }, -- Roublard
		{ map = "000000000", path = "right" }, -- ? lul
        -- Déplacements / Rotas / Paths
        { map = "4,-1", path = "bottom" },
        { map = "5,-1", path = "left" },
        { map = "4,0", path = "left" },
        { map = "5,0", path = "left" },
        { map = "4,1", path = "top" },
        { map = "3,1", path = "top" },
        { map = "3,0", path = "top" },
        { map = "3,-2", path = "top" },
        { map = "3,-1", path = "top" },
        { map = "2,0", path = "top" },
        { map = "2,-1", path = "top" },
        { map = "2,-2", path = "top" },
        { map = "1,-2", path = "top" },
        { map = "0,-2", path = "top" },
        { map = "0,-1", path = "top" },
        { map = "1,-1", path = "top" },
        { map = "1,0", path = "top" },
        { map = "0,1", path = "top" },
        { map = "-1,1", path = "top" },
        { map = "-1,0", path = "left" },
        { map = "-2,0", path = "top" },
        { map = "-1,-2", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "-2,-1", path = "top" },
        { map = "-2,-2", path = "top" },
        { map = "-3,-5", path = "right" },
        { map = "-3,-6", path = "right" },
        { map = "-2,-6", path = "bottom" },
        { map = "-2,-5", path = "bottom" },
        { map = "-1,-6", path = "bottom" },
        { map = "-1,-5", path = "bottom" },
        { map = "0,-5", path = "bottom" },
        { map = "1,-5", path = "bottom" },
        { map = "2,-5", path = "bottom" },
        { map = "3,-5", path = "bottom" },
        { map = "4,-4", path = "bottom" },
        { map = "3,-4", path = "bottom" },
        { map = "2,-4", path = "bottom" },
        { map = "-2,-4", path = "bottom" },
        { map = "-1,-4", path = "bottom" },
        { map = "0,-4", path = "bottom" },
        { map = "1,-4", path = "bottom" },

        -- Combats
        { map = "-1,-3", path = "left|right", fight = true },
        { map = "0,-3", path = "left|right", fight = true },
        { map = "1,-3", path = "left|right", fight = true },
        { map = "2,-3", path = "left|right", fight = true },
        { map = "-2,-3", path = "right", fight = true },
        { map = "3,-3", path = "left", fight = true },
    }

end

function champs()
	return {
	
        -- Déplacements
        { map = "4,-3", path = "left" },
        { map = "4,-4", path = "left" },
        { map = "3,-5", path = "bottom" },
        { map = "2,-5", path = "bottom" },
        { map = "1,-5", path = "bottom" },
        { map = "1,-4", path = "bottom" },
        { map = "2,-4", path = "bottom" },
        { map = "3,-4", path = "bottom" },
        { map = "5,0", path = "left" },
        { map = "4,0", path = "left" },
        { map = "4,1", path = "top" },
        { map = "5,-1", path = "bottom" },
        { map = "4,-1", path = "bottom" },
        { map = "3,1", path = "top" },
        { map = "3,0", path = "top" },
        { map = "2,0", path = "top" },
        { map = "1,0", path = "top" },
        { map = "0,-1", path = "right" },
        { map = "0,1", path = "top" },
        { map = "-1,1", path = "top" },
        { map = "-1,0", path = "top" },
        { map = "-2,0", path = "top" },
        { map = "-2,-1", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "1,-1", path = "top" },
        { map = "2,-1", path = "top" },
        { map = "3,-1", path = "top" },
        { map = "3,-2", path = "top" },
        { map = "2,-2", path = "top" },
        { map = "1,-2", path = "top" },
        { map = "0,-2", path = "top" },
        { map = "-1,-2", path = "top" },
        { map = "-2,-2", path = "top" },
        { map = "-2,-3", path = "top" },
        { map = "3,-3", path = "left" },
        { map = "2,-3", path = "left" },
        { map = "1,-3", path = "left" },
        { map = "0,-3", path = "left" },
        { map = "-1,-3", path = "top" },

        -- Combats
        { map = "-2,-6", path = "left|bottom", fight = true },
        { map = "-2,-5", path = "bottom", fight = true },
        { map = "-3,-5", path = "right", fight = true },
        { map = "-3,-6", path = "bottom", fight = true },
        { map = "-1,-6", path = "left", fight = true },
        { map = "-1,-5", path = "top|left", fight = true },
        { map = "0,-5", path = "left", fight = true },
        { map = "0,-4", path = "top", fight = true },
        { map = "-1,-4", path = "top|right", fight = true },
        { map = "-2,-4", path = "right", fight = true },
		}
	

end

function lac()
    return {

 -- Déplacements
        { map = "4,-1", path = "bottom" },
        { map = "5,0", path = "left" },
        { map = "5,-1", path = "left" },
        { map = "4,1", path = "left" },
        { map = "4,0", path = "left" },
        { map = "3,1", path = "top" },
        { map = "3,0", path = "top" },
        { map = "3,-2", path = "top" },
        { map = "3,-1", path = "top" },
        { map = "1,0", path = "top" },
        { map = "2,0", path = "top" },
        { map = "2,-2", path = "top" },
        { map = "2,-1", path = "top" },
        { map = "4,-3", path = "left" },
        { map = "4,-4", path = "bottom" },
        { map = "3,-4", path = "bottom" },
        { map = "3,-5", path = "bottom" },
        { map = "2,-5", path = "bottom" },
        { map = "2,-4", path = "bottom" },
        { map = "1,-4", path = "bottom" },
        { map = "1,-5", path = "bottom" },
        { map = "0,-3", path = "left" },
        { map = "1,-3", path = "left" },
        { map = "2,-3", path = "left" },
        { map = "3,-3", path = "left" },
        { map = "-2,-3", path = "bottom" },
        { map = "1,-2", path = "left" },
        { map = "1,-1", path = "top" },
        { map = "-3,-6", path = "right" },
        { map = "-2,-6", path = "right" },
        { map = "-3,-5", path = "right" },
        { map = "-2,-5", path = "right" },
        { map = "-2,-4", path = "right" },
        { map = "0,-4", path = "left" },
        { map = "0,-5", path = "left" },
        { map = "-1,-6", path = "bottom" },
        { map = "-1,-5", path = "bottom" },
        { map = "-1,-4", path = "bottom" },
        { map = "-1,-3", path = "bottom" },
		{ map = "0,0", path = "right" },

        -- Combats
        { map = "0,-1", path = "right", fight = true },
        { map = "0,1", path = "top", fight = true },
        { map = "-1,1", path = "right", fight = true },
        { map = "-1,0", path = "top|right|bottom", fight = true },
        { map = "-2,0", path = "right", fight = true },
        { map = "-2,-1", path = "right|bottom", fight = true },
        { map = "-2,-2", path = "bottom", fight = true },
        { map = "-1,-2", path = "left|right|bottom", fight = true },
        { map = "-1,-1", path = "top|left", fight = true },
        { map = "0,-2", path = "left", fight = true },
	}

end

function foret()
    return {

        -- Déplacements
        { map = "5,-1", path = "bottom" },
        { map = "4,-1", path = "bottom" },
        { map = "5,0", path = "left" },
        { map = "4,0", path = "left" },
        { map = "4,1", path = "left" },
        { map = "3,0", path = "top" },
        { map = "3,1", path = "top" },
        { map = "3,-3", path = "left" },
        { map = "3,-4", path = "bottom" },
        { map = "3,-5", path = "bottom" },
        { map = "2,-5", path = "bottom" },
        { map = "2,-3", path = "bottom" },
        { map = "2,-4", path = "bottom" },
        { map = "1,-4", path = "bottom" },
        { map = "1,-5", path = "bottom" },
        { map = "0,-4", path = "bottom" },
        { map = "0,-5", path = "bottom" },
        { map = "-1,-4", path = "bottom" },
        { map = "-1,-5", path = "bottom" },
        { map = "-1,-6", path = "bottom" },
        { map = "-2,-6", path = "right" },
        { map = "-2,-5", path = "right" },
        { map = "-2,-4", path = "right" },
        { map = "-3,-6", path = "right" },
        { map = "-3,-5", path = "right" },
        { map = "0,1", path = "top" },
        { map = "-1,1", path = "top" },
        { map = "-1,0", path = "right" },
        { map = "-2,0", path = "right" },
        { map = "-2,-1", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "-2,-2", path = "top" },
        { map = "-1,-2", path = "top" },
        { map = "0,-2", path = "right" },
        { map = "-2,-3", path = "right" },
        { map = "-1,-3", path = "right" },
        { map = "0,-3", path = "right" },
        { map = "1,-3", path = "bottom" },
        { map = "0,-1", path = "bottom" },
		{ map = "0,0", path = "right" },

        -- Combats
        { map = "3,-1", path = "top", fight = true },
        { map = "2,-1", path = "right", fight = true },
        { map = "2,0", path = "top", fight = true },
        { map = "1,0", path = "right", fight = true },
        { map = "1,-1", path = "bottom", fight = true },
        { map = "2,-2", path = "right|bottom", fight = true },
        { map = "1,-2", path = "right", fight = true },
        { map = "3,-2", path = "left", fight = true },

        -- Retour en banque
        { map = "", path = "right" }, -- Map extérieure de la banque, MAPID OBLIGATOIRE
        { map = "", path = "" }, -- Map intérieure de la banque pour sortir, MAPID OBLIGATOIRE
    }


end

function paturage()

    return {

        -- Déplacements
        { map = "5,-1", path = "bottom" },
        { map = "4,-1", path = "bottom" },
        { map = "4,0", path = "left" },
        { map = "5,0", path = "left" },
        { map = "-3,-5", path = "right" },
        { map = "-3,-6", path = "right" },
        { map = "-2,-6", path = "bottom" },
        { map = "-1,-6", path = "bottom" },
        { map = "0,-5", path = "right" },
        { map = "-1,-5", path = "right" },
        { map = "-2,-5", path = "right" },
        { map = "0,-4", path = "right" },
        { map = "-1,-4", path = "right" },
        { map = "-2,-4", path = "right" },
        { map = "3,-3", path = "top" },
        { map = "4,1", path = "top" },
        { map = "3,1", path = "top" },
        { map = "3,0", path = "top" },
        { map = "0,1", path = "top" },
        { map = "-1,1", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "-2,-1", path = "top" },
        { map = "-1,0", path = "right" },
        { map = "-2,0", path = "right" },
        { map = "0,-2", path = "right" },
        { map = "-1,-2", path = "right" },
        { map = "-2,-2", path = "right" },
        { map = "1,-3", path = "right" },
        { map = "0,-3", path = "right" },
        { map = "-1,-3", path = "right" },
        { map = "-2,-3", path = "right" },
        { map = "1,0", path = "top" },
        { map = "1,-1", path = "top" },
        { map = "2,0", path = "top" },
        { map = "2,-1", path = "top" },
        { map = "2,-2", path = "top" },
        { map = "3,-2", path = "left" },
        { map = "1,-2", path = "right" },
        { map = "3,-1", path = "left" },
        { map = "2,-3", path = "top" },
		{ map = "0,0", path = "right" },
        -- Combats
        { map = "2,-4", path = "top|right", fight = true },
        { map = "1,-4", path = "right", fight = true },
        { map = "1,-5", path = "bottom", fight = true },
        { map = "2,-5", path = "left", fight = true },
        { map = "3,-5", path = "left", fight = true },
        { map = "3,-4", path = "top", fight = true },
    }

end

function cimetiere()
    return {

        -- Déplacements
        { map = "-2,-2", path = "top" },
        { map = "-1,-2", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "-2,-1", path = "top" },
        { map = "0,1", path = "top" },
        { map = "-1,1", path = "top" },
        { map = "-2,0", path = "right" },
        { map = "-1,0", path = "right" },
        { map = "3,-2", path = "left" },
        { map = "2,0", path = "top" },
        { map = "1,-2", path = "top" },
        { map = "1,-1", path = "top" },
        { map = "1,0", path = "top" },
        { map = "-1,-6", path = "bottom" },
        { map = "-2,-6", path = "bottom" },
        { map = "-3,-6", path = "bottom" },
        { map = "-3,-5", path = "right" },
        { map = "0,-5", path = "right" },
        { map = "-1,-5", path = "right" },
        { map = "-2,-5", path = "right" },
        { map = "0,-4", path = "right" },
        { map = "-1,-4", path = "right" },
        { map = "-2,-4", path = "right" },
        { map = "0,-3", path = "right" },
        { map = "-1,-3", path = "right" },
        { map = "-2,-3", path = "right" },
        { map = "1,-3", path = "right" },
        { map = "1,-4", path = "right" },
        { map = "1,-5", path = "right" },
        { map = "2,-5", path = "bottom" },
        { map = "3,-5", path = "left" },
        { map = "3,-4", path = "left" },
        { map = "3,-3", path = "left" },
        { map = "2,-4", path = "bottom" },
        { map = "2,-3", path = "bottom" },
        { map = "2,-2", path = "bottom" },
        { map = "4,-4", path = "left" },
        { map = "4,-3", path = "left" },
        { map = "2,-1", path = "right" },
        { map = "3,-1", path = "bottom" },
		{ map = "0,0", path = "right" },

        -- Combats
        { map = "4,1", path = "top", fight = true },
        { map = "3,1", path = "right", fight = true },
        { map = "3,0", path = "bottom", fight = true },
        { map = "4,0", path = "left|right", fight = true },
        { map = "4,-1", path = "bottom", fight = true },
        { map = "5,-1", path = "left", fight = true },
        { map = "5,0", path = "top", fight = true },
    }


end

function goAstrub()
    return {

        -- Déplacements
        { map = "3,-2", path = "top" },
        { map = "-1,-2", path = "top" },
        { map = "-1,-1", path = "top" },
        { map = "-2,-2", path = "top" },
        { map = "-2,-1", path = "top" },
        { map = "-2,0", path = "top" },
        { map = "-1,0", path = "left" },
        { map = "-1,1", path = "top" },
        { map = "0,1", path = "top" },
        { map = "0,-1", path = "right" },
        { map = "1,-2", path = "top" },
        { map = "1,-1", path = "top" },
        { map = "1,0", path = "top" },
        { map = "2,0", path = "top" },
        { map = "4,-4", path = "bottom" },
        { map = "0,-5", path = "bottom" },
        { map = "3,-4", path = "bottom" },
        { map = "3,-5", path = "bottom" },
        { map = "-1,-6", path = "bottom" },
        { map = "-2,-6", path = "bottom" },
        { map = "-3,-6", path = "right" },
        { map = "-3,-5", path = "right" },
        { map = "2,-4", path = "right" },
        { map = "2,-5", path = "right" },
        { map = "1,-5", path = "right" },
        { map = "-1,-5", path = "right" },
        { map = "-2,-5", path = "right" },
        { map = "1,-4", path = "right" },
        { map = "0,-4", path = "right" },
        { map = "-1,-4", path = "right" },
        { map = "-2,-4", path = "right" },
        { map = "1,-3", path = "right" },
        { map = "0,-3", path = "right" },
        { map = "-1,-3", path = "right" },
        { map = "-2,-3", path = "right" },
        { map = "5,0", path = "left" },
        { map = "5,-1", path = "left" },
        { map = "4,-1", path = "bottom" },
        { map = "4,0", path = "left" },
        { map = "4,1", path = "left" },
        { map = "3,1", path = "top" },
        { map = "3,0", path = "top" },
        { map = "3,-1", path = "left" },
        { map = "2,-1", path = "top" },
        { map = "2,-2", path = "top" },
        { map = "2,-3", path = "right" },
        { map = "3,-3", path = "right" },
		{ map = "4,-3", custom = portal },
		{ map = "0,0", path = "right" },
		{ map = "192416776", path = "bottom|left" },
		{ map = "191106048", path = "bottom|left" },
		{ map = "6,-18", path = "left" },
		{ map = "5,-19", path = "bottom" },
		{ map = "5,-18", custom = save },
    }

end

function portal()
	npc:npc(4398,3)
	global:delay(654)
	npc:reply(-1)
	global:delay(435)
	npc:reply(-1)
end

function save()
	map:saveZaap()
	global:printSuccess("Thank you for using my script. Your character is ready to use. Good luck.")
    global:printSuccess("Le trajet est terminé, le personnage est prêt à être utilisé.")
    global:printSuccess("Wrote by some, finished and corrected by Broil.")
	global:disconnect()
	global:finishScript()
end

function bank()
	return move()
end

function phenix()
	return move()
end