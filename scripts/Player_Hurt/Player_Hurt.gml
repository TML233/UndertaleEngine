function Player_Hurt(damage) {
	if(damage<0){
		return Player_Heal(-damage);
	}
	if(damage>0){
		if (global.kr_enabled) {
			var direct_dmg = 1;
			var hp = max(0, Player_GetHp() - direct_dmg);
			Player_SetHp(hp);
			
			var kr_dmg = max(0, damage - direct_dmg);
			global.kr = min(global.kr + kr_dmg, Player_GetHp() - 1);
		} else {
			var hp=max(0,Player_GetHp()-damage);
			Player_SetHp(hp);
		}
	}
	return true;
}
