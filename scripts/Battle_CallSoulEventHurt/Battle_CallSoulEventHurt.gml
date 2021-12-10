function Battle_CallSoulEventHurt() {
	with(battle_soul){
		event_user(BATTLE_SOUL_EVENT.HURT);
	}
	return true;


}
