///@arg phone_slot
function Phone_Get() {
	var SLOT=argument[0];

	return (Phone_IsSlotValid(SLOT)) ? Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+SLOT) : -1;


}
