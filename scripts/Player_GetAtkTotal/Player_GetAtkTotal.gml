function Player_GetAtkTotal() {
	return Player_GetAtk()+Player_GetAtkItem()+(Player_IsInBattle() ? Battle_GetPlayerTempAtk() : 0);


}
