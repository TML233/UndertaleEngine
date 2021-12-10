function Battle_EndDialog() {
	if(Battle_GetState()==BATTLE_STATE.DIALOG){
		Dialog_Clear();
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.DIALOG_END);
		Battle_GotoNextState();
		return true;
	}else{
		return false;
	}


}
