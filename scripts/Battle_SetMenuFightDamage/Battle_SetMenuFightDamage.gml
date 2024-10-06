///@arg damage
function Battle_SetMenuFightDamage(DAMAGE) {
	if(DAMAGE>=-1){
		battle._menu_fight_damage=DAMAGE;
		return true;
	}else{
		return false;
	}


}
