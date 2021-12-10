function Battle_CallBulletEventSoulCollision() {
	if(Battle_IsSoulValid(self)&&Battle_IsBulletValid(other)){
		with(other){
			event_user(BATTLE_BULLET_EVENT.SOUL_COLLISION);
		}
	}else{
		return false;
	}


}
