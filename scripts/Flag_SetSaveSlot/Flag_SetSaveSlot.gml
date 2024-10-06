///@arg slot
function Flag_SetSaveSlot(SLOT) {
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.SAVE_SLOT,SLOT);
	return true;
}
