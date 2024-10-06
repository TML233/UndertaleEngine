///@arg slot
function Player_Load(SLOT) {
	Flag_SetSaveSlot(SLOT);

	Flag_Load(FLAG_TYPE.STATIC);
	Flag_Load(FLAG_TYPE.DYNAMIC);
	Flag_Load(FLAG_TYPE.INFO);

	return true;


}
