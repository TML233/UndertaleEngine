///@arg damage
function Battle_SetMenuFightDamage() {
	var DAMAGE=argument[0];

	if(DAMAGE>=-1){
		battle._menu_fight_damage=DAMAGE;
		return true;
	}else{
		return false;
	}


}
