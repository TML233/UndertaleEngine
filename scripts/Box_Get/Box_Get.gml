///@arg box_slot
///@arg item_slot
function Box_Get(SLOT_BOX,SLOT) {


	return (Box_IsBoxSlotValid(SLOT_BOX) && Box_IsSlotValid(SLOT)) ? Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+10*SLOT_BOX+SLOT) : -1;


}
