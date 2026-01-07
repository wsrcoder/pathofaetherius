Scriptname PATH_AG_Stone_Lord_Activate extends ObjectReference  


import game
import utility


; //list of the effects
SPELL Property Stone_Apprentice_Ability_1 Auto

SPELL Property Stone_Atronach_Ability_1 Auto
SPELL Property Stone_Atronach_Ability_2 Auto
SPELL Property Stone_Atronach_Ability_3 Auto

SPELL Property Stone_Lady_Ability_1 Auto
SPELL Property Stone_Lady_Ability_2 Auto

SPELL Property Stone_Lord_Ability_1 Auto
SPELL Property Stone_Lover_Ability_1 Auto
SPELL Property Stone_Mage_Ability_1 Auto

SPELL Property Stone_Ritual_Ability_1 Auto
SPELL Property Stone_Ritual_Ability_2 Auto
SPELL Property Stone_Ritual_Ability_3 Auto
SPELL Property Stone_Ritual_Ability_4 Auto

SPELL Property Stone_Serpent_Ability_1 Auto
SPELL Property Stone_Serpent_Ability_2 Auto

SPELL Property Stone_Shadow_Ability_1 Auto
SPELL Property Stone_Shadow_Ability_2 Auto

SPELL Property Stone_Steed_Ability_1 Auto

SPELL Property Stone_Guile_Ability_1 Auto
SPELL Property Stone_Guile_Ability_2 Auto

SPELL Property Stone_Tower_Ability_1 Auto

SPELL Property Stone_Warrior_Ability_1 Auto
SPELL Property Stone_Warrior_Ability_2 Auto

; //list of the messages
MESSAGE Property StandingStoneMsg Auto


;************************************

int ABILITY_CODE_1 = 0
int ABILITY_CODE_2 = 1
int ABILITY_CODE_3 = 2
int ABILITY_CODE_4 = 3

Auto State base
	
	event OnActivate(ObjectReference obj)



        utility.wait(1)

        int button_code = showSign()
        
		; // present them with the choice
		if(button_code == ABILITY_CODE_1)
				removeSign()
				addSign(ABILITY_CODE_1)
					
				SELF.playAnimation("playanim01")
					
				utility.wait(15)
					
        endif
			
	
	endEvent
	
endState


Int Function showSign()
	
	int signHolder = StandingStoneMsg.show()
	
	return signHolder
		
EndFunction

; //FUNCTION: addSign
; //
; // adds the sign of the stone to the player
FUNCTION addSign(int ability_index)
	game.AddAchievement(29)

	if(ability_index == ABILITY_CODE_1)
		Game.getPlayer().addSpell(Stone_Lord_Ability_1)
    endif
EndFunction

; //FUNCTION: removeSign
; //
; // Removes all of the signs currently on the player
Function removeSign()
		
	if(Game.getPlayer().hasSpell(Stone_Apprentice_Ability_1))
		Game.getPlayer().removeSpell(Stone_Apprentice_Ability_1)
	
    elseif(game.getPlayer().hasSpell(Stone_Atronach_Ability_1))
		game.getPlayer().removeSpell(Stone_Atronach_Ability_1)	

    elseif(game.getPlayer().hasSpell(Stone_Atronach_Ability_2))
		game.getPlayer().removeSpell(Stone_Atronach_Ability_2)	

    elseif(game.getPlayer().hasSpell(Stone_Atronach_Ability_3))
		game.getPlayer().removeSpell(Stone_Atronach_Ability_3)

	elseif(game.getPlayer().hasSpell(Stone_Lady_Ability_1))
		game.getPlayer().removeSpell(Stone_Lady_Ability_1)	
	
    elseif(game.getPlayer().hasSpell(Stone_Lady_Ability_2))
		game.getPlayer().removeSpell(Stone_Lady_Ability_2)	

	elseif(game.getPlayer().hasSpell(Stone_Lord_Ability_1))
		game.getPlayer().removeSpell(Stone_Lord_Ability_1)	
	
	elseif(game.getPlayer().hasSpell(Stone_Lover_Ability_1))
		game.getPlayer().removeSpell(Stone_Lover_Ability_1)
	
	elseif(game.getPlayer().hasSpell(Stone_Mage_Ability_1))
		game.getPlayer().removeSpell(Stone_Mage_Ability_1)	
	
	elseif(game.getPlayer().hasSpell(Stone_Ritual_Ability_1))
		game.getPlayer().removeSpell(Stone_Ritual_Ability_1)	

	elseif(game.getPlayer().hasSpell(Stone_Ritual_Ability_2))
		game.getPlayer().removeSpell(Stone_Ritual_Ability_2)	

	elseif(game.getPlayer().hasSpell(Stone_Ritual_Ability_3))
		game.getPlayer().removeSpell(Stone_Ritual_Ability_3)	

	elseif(game.getPlayer().hasSpell(Stone_Ritual_Ability_4))
		game.getPlayer().removeSpell(Stone_Ritual_Ability_4)	

	elseif(game.getPlayer().hasSpell(Stone_Serpent_Ability_1))
		game.getPlayer().removeSpell(Stone_Serpent_Ability_1)	

	elseif(game.getPlayer().hasSpell(Stone_Serpent_Ability_2))
		game.getPlayer().removeSpell(Stone_Serpent_Ability_2)

	elseif(game.getPlayer().hasSpell(Stone_Shadow_Ability_1))
		game.getPlayer().removeSpell(Stone_Shadow_Ability_1)	

	elseif(game.getPlayer().hasSpell(Stone_Shadow_Ability_2))
		game.getPlayer().removeSpell(Stone_Shadow_Ability_2)	

	elseif(game.getPlayer().hasSpell(Stone_Steed_Ability_1))
		game.getPlayer().removeSpell(Stone_Steed_Ability_1)	
	
	elseif(game.getPlayer().hasSpell(Stone_Guile_Ability_1))
		game.getPlayer().removeSpell(Stone_Guile_Ability_1)	

	elseif(game.getPlayer().hasSpell(Stone_Guile_Ability_2))
		game.getPlayer().removeSpell(Stone_Guile_Ability_2)	

	elseif(game.getPlayer().hasSpell(Stone_Tower_Ability_1))
		game.getPlayer().removeSpell(Stone_Tower_Ability_1)	

    elseif(game.getPlayer().hasSpell(Stone_Warrior_Ability_1))
		game.getPlayer().removeSpell(Stone_Warrior_Ability_1)	
	
    elseif(game.getPlayer().hasSpell(Stone_Warrior_Ability_2))
        game.getPlayer().removeSpell(Stone_Warrior_Ability_2)	
    endif
	
endFUNCTION

;************************************

State waiting
	;do nothing
endState

;************************************