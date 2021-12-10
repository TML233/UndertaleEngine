function Player_GetInvTotal() {
	return Player_GetInv()+Player_GetInvItem()+(Player_IsInBattle() ? Battle_GetPlayerTempInv() : 0);


}
