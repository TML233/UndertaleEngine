///@arg enemy_choice
///@arg call_event*
function Battle_SetMenuChoiceEnemy() {
	var ENEMY=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if(ENEMY>=0 && ENEMY<Battle_GetEnemyNumber()){
		battle._menu_choice_enemy=ENEMY;
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
