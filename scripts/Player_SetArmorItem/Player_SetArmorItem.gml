///@arg item
function Player_SetArmorItem() {
	var ITEM=argument[0];

	var itemTypes=Item_GetTypeManager();
	if(itemTypes.IsEmptyOrValid(ITEM)){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_ARMOR,ITEM);
		return true;
	}else{
		return false;
	}


}
