function Item_Init(){
	global._item_type_manager=new ItemTypeManager();
	global._item_inventory_manager=new RegisterManager();
	Item_Custom();
}
function Item_Uninit(){
	delete global._item_type_manager;
	delete global._item_inventory_manager;
}

function Item_GetTypeManager(){
	return global._item_type_manager;
}
function Item_GetInventoryManager(){
	return global._item_inventory_manager;
}