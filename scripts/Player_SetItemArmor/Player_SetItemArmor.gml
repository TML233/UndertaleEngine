function Player_SetItemArmor(item) {
	var itemTypes=Item_GetTypeManager();
	if(!itemTypes.IsEmptyOrValid(item)){
		return false;
	}
	
	Storage_GetStaticGeneral().Set(FLAG_STATIC_ITEM_ARMOR,item);
	return true;
}
