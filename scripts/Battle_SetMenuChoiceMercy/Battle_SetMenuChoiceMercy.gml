///@arg mercy_choice
///@arg call_event*
var MECRY=argument[0];
var CALL=true;
if(argument_count>=2){
	CALL=argument[1];
}

if(MECRY>=0 && MECRY<=1){
	battle._menu_choice_mercy=MECRY;
	
	if(CALL){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
	}
	
	return true;
}else{
	return false;
}