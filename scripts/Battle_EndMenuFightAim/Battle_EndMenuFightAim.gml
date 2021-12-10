function Battle_EndMenuFightAim() {
	if(Battle_GetMenu()==BATTLE_MENU.FIGHT_AIM){
		Battle_SetMenu(BATTLE_MENU.FIGHT_ANIM);
		return true;
	}else{
		return false;
	}


}
