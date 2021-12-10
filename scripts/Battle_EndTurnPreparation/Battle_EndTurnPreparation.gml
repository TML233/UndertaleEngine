function Battle_EndTurnPreparation() {
	if(Battle_GetState()==BATTLE_STATE.TURN_PREPARATION){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_PREPARATION_END);
		if(instance_exists(battle_turn)){
			with(battle_turn){
				event_user(BATTLE_TURN_EVENT.TURN_PREPARATION_END);
			}
		}
		Battle_GotoNextState();
		return true;
	}else{
		return false;
	}


}
