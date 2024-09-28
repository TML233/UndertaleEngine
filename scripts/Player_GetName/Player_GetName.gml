function Player_GetName() {
	return Storage_GetStaticGeneral().Get(FLAG_STATIC_NAME,"???");
}
