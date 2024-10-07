///@arg box_slot
///@arg item_slot
function Box_Remove() {
	var SLOT_BOX=argument[0];
	var SLOT=argument[1];

	if(Box_IsBoxSlotValid(SLOT_BOX)&&Box_IsSlotValid(SLOT)){
		if(Item_IsValid(Box_Get(SLOT_BOX,SLOT))){
			Box_Set(SLOT_BOX,SLOT,-1);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
