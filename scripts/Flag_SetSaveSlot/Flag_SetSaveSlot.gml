///@arg slot
function Flag_SetSaveSlot() {
	var SLOT=argument[0];

	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.SAVE_SLOT,SLOT);
	return true;


}
