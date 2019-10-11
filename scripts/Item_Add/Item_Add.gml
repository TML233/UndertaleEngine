///@arg item_id
var ITEM=argument[0];

if(Item_GetNumber()<8){
	return Item_Set(Item_GetNumber(),ITEM);
}else{
	return false;
}