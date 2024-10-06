///@arg item
function Item_SetArmor(ITEM) {
	if(Item_IsValid(ITEM)){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_ARMOR,ITEM);
		return true;
	}else{
		return false;
	}
}