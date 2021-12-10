function Player_GetSpdTotal() {
	return Player_GetSpd()+Player_GetSpdItem()+(Player_IsInBattle() ? Battle_GetPlayerTempSpd() : 0);


}
