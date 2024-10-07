///@arg box_slot
///@arg item
function Box_Add() {
	var SLOT=argument[0];
	var ITEM=argument[1];

	if(Box_IsBoxSlotValid(SLOT)&&Item_IsValid(ITEM)){
		if(Box_GetNumber(SLOT)<10){
			Box_Set(SLOT,Box_GetNumber(SLOT),ITEM);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
