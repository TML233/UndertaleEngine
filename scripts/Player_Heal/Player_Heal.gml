function Player_Heal(heal) {
	if(heal<0){
		return Player_Hurt(-heal);
	}
	if(heal>0){
		var hp=min(Player_GetHpMax(),Player_GetHp()+heal);
		Player_SetHp(hp);
	}
	return true;
}
