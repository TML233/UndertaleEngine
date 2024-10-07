function Player_GetGold() {
	return Storage_GetStaticGeneral().Get(FLAG_STATIC_GOLD,0);
}
