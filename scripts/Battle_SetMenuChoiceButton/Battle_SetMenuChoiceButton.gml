///@arg button_choice
///@arg call_event*
function Battle_SetMenuChoiceButton(BUTTON,CALL=true) {
	if(BUTTON>=0 && BUTTON<=3){
		battle._menu_choice_button=BUTTON;
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
