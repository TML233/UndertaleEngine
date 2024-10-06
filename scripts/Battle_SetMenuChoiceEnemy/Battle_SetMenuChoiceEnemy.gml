///@arg enemy_choice
///@arg call_event*
function Battle_SetMenuChoiceEnemy(ENEMY,CALL=true) {

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
