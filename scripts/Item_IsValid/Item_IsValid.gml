///@arg item_id
var ITEM=argument[0];

if(object_exists(ITEM)){
	return (ITEM==item || Object_GetBaseParent(ITEM)==item);
}else{
	return false;
}