function Player_SetItemWeapon(item) {
	var itemTypes=Item_GetTypeManager();
	if(!itemTypes.IsEmptyOrValid(item)){
		return false;
	}
	
	Storage_GetStaticGeneral().Set(FLAG_STATIC_ITEM_WEAPON,item);
	return true;
}
