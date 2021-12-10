function Battle_EndMenuFightAnim() {
	if(Battle_GetMenu()==BATTLE_MENU.FIGHT_ANIM){
		Battle_SetMenuFightAnimTime(0);
		Battle_SetMenu(BATTLE_MENU.FIGHT_DAMAGE);
		return true;
	}else{
		return false;
	}


}
