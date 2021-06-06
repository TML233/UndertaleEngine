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
			
			Battle_RemoveEnemy(_enemy_slot);
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
			case 1:
				Dialog_Add("* You can now {color_text `yellow`}SPARE{color_text `white`} the monster!");
				Battle_SetEnemySpareable(_enemy_slot,true);
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		switch(Battle_GetMenuChoiceMercy()){
			case BATTLE_MENU_CHOICE_MERCY.SPARE:
				image_alpha=0.5;
				_head.visible=false;
				sprite_index=_sprite_hurt;
				audio_play_sound(snd_vaporize,0,false);
				
				repeat(12)
					instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
				break;
		}
		break;
}