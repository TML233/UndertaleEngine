function Player_UpdateLv() {
	var result=false;

	while(Player_GetLvExp(Player_GetLv()+1)!=-1 && Player_GetExp()>=Player_GetLvExp(Player_GetLv()+1)){
		Player_LvUp(Player_GetLv()+1);
		result=true;
	}

	return result;


}
