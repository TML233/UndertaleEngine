///@arg item_id
var ITEM=argument[0];

if(object_exists(ITEM)){
	return (ITEM==item || object_get_parent(ITEM)==item);
}else{
	return false;
}