///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_hp<=0){
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=sprite_index;
			audio_play_sound(snd_vaporize,0,false);
			
			//Player_SetKills(Player_GetKills()+1);
			Battle_RewardExp(+1);
			Battle_RewardGold(+1);
			
			instance_destroy();
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:{
				//Dialog_Add("* TEST MONSTER - AT 0 DF 0&* A MONSTER.");
				break;
				}
		}
		//is mercy button chosen
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
			  //is spare option chosen
			  if(Battle_GetMenuChoiceButton()==3){
				  if(Battle_GetMenuChoiceMercy()==0){
				    //check if sparable, or just do the code
				    if(Battle_SetEnemySpareable(_enemy_slot,true)){
				       //TODO: create some dust effects
				       instance_destroy();
				    }
				}
			}
		break;
}
