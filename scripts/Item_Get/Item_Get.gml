///@arg item_slot
var SLOT=argument[0];

return (Item_IsSlotValid(SLOT)) ? Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT) : -1;