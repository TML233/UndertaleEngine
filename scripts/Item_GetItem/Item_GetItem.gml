///@arg item_id
function Item_GetItem(ID){
	return variable_struct_get(global._items, ID);
}