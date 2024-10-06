///@arg action_choice
///@arg call_event*
function Battle_SetMenuChoiceAction(ACTION,CALL=true) {

	if(ACTION>=0 && ACTION<=5){
		battle._menu_choice_action=ACTION;
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
