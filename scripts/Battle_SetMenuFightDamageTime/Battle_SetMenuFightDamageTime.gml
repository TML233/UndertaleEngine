///@arg time
function Battle_SetMenuFightDamageTime() {
	var TIME=argument[0];

	var MENU=Battle_GetMenu();

	if((MENU==BATTLE_MENU.FIGHT_AIM||MENU==BATTLE_MENU.FIGHT_ANIM||MENU==BATTLE_MENU.FIGHT_DAMAGE) && TIME>=-1){
		battle._menu_fight_damage_time=TIME;
		return true;
	}else{
		return false;
	}


}
