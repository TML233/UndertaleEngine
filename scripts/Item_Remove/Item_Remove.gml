///@arg item_slot
function Item_Remove() {
	var SLOT=argument[0];

	if(Item_IsSlotValid(SLOT)){
		if(Item_IsValid(Item_Get(SLOT))){
			Item_Set(SLOT,-1);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
