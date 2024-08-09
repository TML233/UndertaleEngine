///@arg item_id
function Item_IsValid() {
	var ITEM=argument[0];

	return variable_struct_exists(global._items, ITEM);


}
