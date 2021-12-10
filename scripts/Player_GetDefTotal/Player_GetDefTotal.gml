function Player_GetDefTotal() {
	return Player_GetDef()+Player_GetDefItem()+(Player_IsInBattle() ? Battle_GetPlayerTempDef() : 0);


}
