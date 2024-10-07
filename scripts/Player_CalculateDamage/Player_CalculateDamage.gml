function Player_CalculateDamage(baseDamage,minDamage=0,maxDamage=infinity) {
	var hp=Player_GetHp();
	var def=Player_GetDefTotal();
	baseDamage+=(hp>=20 ? ceil((hp-20)/10) : 0);
	baseDamage-=def/5;
	baseDamage=round(baseDamage);
	return clamp(baseDamage,minDamage,maxDamage);
}
