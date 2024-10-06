///@arg item_slot
///@arg item_id
function Item_Set(SLOT,ITEM) {
	if(Item_IsSlotValid(SLOT) && (Item_IsValid(ITEM) || ITEM==-1)){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT,ITEM);
		Item_Update();
		return true;
	}else{
		return false;
	}
}
