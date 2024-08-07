///@arg item_id
function Item_Delete(item_id){
	variable_struct_remove(global._items, item_id);
}