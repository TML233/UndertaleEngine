function Item_Custom(){
	// Register item types and inventories here.
	// Don't add items to inventories! Those are done in Flag_Custom.
	var inventories=GLOBAL_INVENTORY_MANAGER;
	
	inventories.Register("items",new Inventory(8));
	#macro INVENTORY_ITEMS GLOBAL_INVENTORY_MANAGER.Get("items");
	
	inventories.Register("phones",new Inventory(8));
	#macro INVENTORY_PHONES GLOBAL_INVENTORY_MANAGER.Get("phones");

	inventories.Register("box1",new Inventory(10));
	#macro INVENTORY_BOX1 GLOBAL_INVENTORY_MANAGER.Get("box1");
	
	inventories.Register("box2",new Inventory(10));
	#macro INVENTORY_BOX2 GLOBAL_INVENTORY_MANAGER.Get("box2");
	
	
	
	
	// Register item types here.
	var itemTypes=GLOBAL_ITEM_TYPE_MANAGER;
	
	// To create an item type, you need to first write code for your item type.
	// See ItemType_Dice for more information.
	// We created an example item type "Dice" there.
	
	// After creating an item type, you need to register it to let the game know.
	// The item type id must be unique.
	
	// It's good practice to define a macro to make an alias for item type id.
	// This helps you reference the item type id more quickly and eliminate potential typos.
	#macro ITEM_TYPE_DICE "dice"
	itemTypes.Register(ITEM_TYPE_DICE, new ItemType_Dice());
}