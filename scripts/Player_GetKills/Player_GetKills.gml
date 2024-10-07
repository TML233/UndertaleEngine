function Player_GetKills() {
	return Storage_GetStaticGeneral().Get(FLAG_STATIC_KILLS,0);
}
