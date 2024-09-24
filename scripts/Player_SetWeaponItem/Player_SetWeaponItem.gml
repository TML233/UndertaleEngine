///@arg item
function Player_SetWeaponItem() {
	var ITEM=argument[0];
	
	var itemTypes=Item_GetTypeManager();
	if(itemTypes.IsEmptyOrValid(ITEM)){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_WEAPON,ITEM);
		return true;
	}else{
		return false;
	}


}
