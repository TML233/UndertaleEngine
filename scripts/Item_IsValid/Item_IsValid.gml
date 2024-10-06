///@arg item_id
function Item_IsValid(ITEM) {
	if(object_exists(ITEM)){
		return (ITEM==item || Object_GetBaseParent(ITEM)==item);
	}else{
		return false;
	}
}
