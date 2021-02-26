///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_hp<=0){
			sprite_index=_sprite_hurt;
			_head.visible=false;
			
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=_sprite_hurt;
			inst.color=image_blend;
			
			instance_destroy();
		}
		else {
			sprite_index=_sprite_normal;
			_head.visible=true;
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add("* TEST MONSTER - AT 0 DF 0&* Croaks for no reason.");
				break;
		}
}