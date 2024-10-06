///@arg phone_slot
function Phone_Get(SLOT) {

	return (Phone_IsSlotValid(SLOT)) ? Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+SLOT) : -1;


}
