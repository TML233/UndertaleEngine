///@desc Menu End
event_inherited();

switch(Battle_GetMenuChoiceButton()){	
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:{
				//START OF CHECK
				switch(_insult){ //if you have insulted or not
					case 0:
					if _compliment = true {
						Dialog_Add("* TEST MONSTER - AT 0 DF 0&* A pretty monster."); break;}
					Dialog_Add("* TEST MONSTER - AT 0 DF 0&* A test monster.");
					break; //default
					
					case 1: Dialog_Add("* TEST MONSTER - AT 0 DF 0&* Not even harsh words&  distract its mind."); break; //Said Stinky 1
					default: Dialog_Add("* TEST MONSTER - AT 0 DF 0&* Immune to everything&  but physical damage."); break; //Said Stinky 2
					} //end of check
					break;
				}
				
			case 1:
			//You chose stinky
				_insult += 1;
				Dialog_Add("* You insulted the Test Monster.&* It does not care.");
				break;
			case 2:
			//Compliment
				_compliment = true;
				_insult = 0;
				Dialog_Add("* You complimented the Monster.&* It spares you.");
				Battle_SetEnemySpareable(_enemy_slot,true);

		}
}
