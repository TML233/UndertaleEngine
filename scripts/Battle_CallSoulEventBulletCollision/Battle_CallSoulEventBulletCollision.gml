function Battle_CallSoulEventBulletCollision() {
	if(Battle_IsBulletValid(id)){
		with(battle_soul){
			event_user(BATTLE_SOUL_EVENT.BULLET_COLLISION);
		}
		return true;
	}else{
		return false;
	}


}
