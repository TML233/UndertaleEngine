function Battle_EndTurn() {
	if(Battle_GetState()==BATTLE_STATE.IN_TURN){
		Battle_SetTurnNumber(Battle_GetTurnNumber()+1);
	
		/*var LAST=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
		var proc=0;
		repeat(3){
			if(proc!=LAST){
				Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_END,proc);
			}
			proc+=1;
		}*/
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_END);
	
		if(instance_exists(battle_turn)){
			with(battle_turn){
				event_user(BATTLE_TURN_EVENT.TURN_END);
			}
		}
	
		if(instance_exists(battle_bullet)){
			with(battle_bullet){
				event_user(BATTLE_BULLET_EVENT.TURN_END);
			}
		}
	
		Battle_GotoNextState();
		return true;
	}else{
		return false;
	}


}
