#macro GLOBAL_ITEM_TYPE_MANAGER global._item_type_manager
#macro GLOBAL_INVENTORY_MANAGER global._inventory_manager

function Item_Init(){
	GLOBAL_ITEM_TYPE_MANAGER=new RegisterManager();
	GLOBAL_INVENTORY_MANAGER=new RegisterManager();
	Item_Custom();
}
function Item_Uninit(){
	delete GLOBAL_ITEM_TYPE_MANAGER;
	delete GLOBAL_INVENTORY_MANAGER;
}