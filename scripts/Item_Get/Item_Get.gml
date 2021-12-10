///@arg item_slot
function Item_Get() {
	var SLOT=argument[0];

	return (Item_IsSlotValid(SLOT)) ? Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT) : -1;


}
