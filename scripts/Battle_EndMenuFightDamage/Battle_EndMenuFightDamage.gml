function Battle_EndMenuFightDamage() {
	if(Battle_GetMenu()==BATTLE_MENU.FIGHT_DAMAGE){
		Battle_EndMenu();
		return true;
	}else{
		return false;
	}


}
