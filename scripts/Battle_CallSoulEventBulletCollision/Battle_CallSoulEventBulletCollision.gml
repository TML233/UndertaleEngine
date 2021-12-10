function Battle_CallSoulEventBulletCollision() {
	if(Battle_IsBulletValid(self)){
		with(battle_soul){
			event_user(BATTLE_SOUL_EVENT.BULLET_COLLISION);
		}
		return true;
	}else{
		return false;
	}


}
