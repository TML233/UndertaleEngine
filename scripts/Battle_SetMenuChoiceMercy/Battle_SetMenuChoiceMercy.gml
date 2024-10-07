///@arg mercy_choice
///@arg call_event*
function Battle_SetMenuChoiceMercy() {
	var MERCY=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if((!Battle_IsMenuChoiceMercyOverride()&&MERCY>=0&&MERCY<=1)||(Battle_IsMenuChoiceMercyOverride()&&MERCY>=0&&MERCY<Battle_GetMenuChoiceMercyOverrideNumber())){
		battle._menu_choice_mercy=MERCY;
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
