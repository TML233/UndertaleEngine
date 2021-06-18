if(_state!=BATTLE_STATE.RESULT){
	if(!instance_exists(battle._dialog[0])){
		Battle_SetDialog(Battle_GetMenuDialog(),false,false);
	}
}