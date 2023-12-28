if(Battle_GetMenu()!=BATTLE_MENU.ITEM){
	instance_destroy();
}

switch slot
{
	case 0:
	case 4:
	battle_soul.x=battle_board.x-battle_board.left-5+40;
	battle_soul.y=battle_board.y-battle_board.up-5+36;
	break;
	
	case 1:
	case 5:
	battle_soul.x=battle_board.x-battle_board.left-5+40+256;
	battle_soul.y=battle_board.y-battle_board.up-5+36;
	break;
	
	case 2:
	case 6:
	battle_soul.x=battle_board.x-battle_board.left-5+40;
	battle_soul.y=battle_board.y-battle_board.up-5+36+32;
	break;
	
	case 3:
	case 7:
	battle_soul.x=battle_board.x-battle_board.left-5+40+256;
	battle_soul.y=battle_board.y-battle_board.up-5+36+32;
	break;
}

if(Input_IsPressed(INPUT.RIGHT))
{
	if (slot = 0 or slot = 2) and Item_GetNumber() > slot+1
		slot=Battle_GetMenuChoiceItem()+1;
	else if (slot = 1 or slot = 3) and Item_GetNumber() > slot+3
		slot=Battle_GetMenuChoiceItem()+3;
	else if (slot = 4 or slot = 6) and Item_GetNumber() > slot+1
		slot=Battle_GetMenuChoiceItem()+1;
	else
		slot=((slot%4) div 2)*2
	audio_play_sound(snd_menu_switch,0,false)
	Battle_SetMenuChoiceItem(slot)
}

if(Input_IsPressed(INPUT.LEFT))
{
	if slot = 1 or slot = 3 or slot = 5 or slot = 7
	{
		slot=Battle_GetMenuChoiceItem()-1;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(slot)
	}
	else if slot = 4 or slot = 6
	{
		slot=Battle_GetMenuChoiceItem()-3;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(slot)
	}
	else if slot = 0 or slot = 2
	{
		if Item_GetNumber() > slot+5 {
			slot=Battle_GetMenuChoiceItem()+5;
			audio_play_sound(snd_menu_switch,0,false)
			Battle_SetMenuChoiceItem(slot)
		} else if Item_GetNumber() > slot+4 {
			slot=Battle_GetMenuChoiceItem()+4;
			audio_play_sound(snd_menu_switch,0,false)
			Battle_SetMenuChoiceItem(slot)
		} else if Item_GetNumber() > slot+1 {
			slot=Battle_GetMenuChoiceItem()+1;
			audio_play_sound(snd_menu_switch,0,false)
			Battle_SetMenuChoiceItem(slot)
		}
	}
}

if(Input_IsPressed(INPUT.UP) or Input_IsPressed(INPUT.DOWN))
{
	if slot = 2 or slot = 3 or slot = 6 or slot = 7
		slot=Battle_GetMenuChoiceItem()-2;
	else if Item_GetNumber() > slot+2
		slot=Battle_GetMenuChoiceItem()+2;
	audio_play_sound(snd_menu_switch,0,false)
	Battle_SetMenuChoiceItem(slot)
}