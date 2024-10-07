function Player_Hurt(damage) {
	if(damage<0){
		return Player_Heal(-damage);
	}
	if(damage>0){
		var hp=max(0,Player_GetHp()-damage);
		Player_SetHp(hp);
	}
	return true;
}
