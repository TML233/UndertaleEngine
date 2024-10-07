// static data is saved when the player uses the save point
function Storage_Custom_Static(storages){
	var s=new Storage(Storage_MakeGetFilePathFunc(true,"static.json"));
	storages.Register("static",s);
	
	// General zone is for common player stats.
	var zGeneral=new StorageZoneStruct();
	// We use general zone a lot. Make a cached variable to make accessing faster.
	global._storage_cache_static_general=zGeneral;
	s.Register("general",zGeneral);
	
	// Inventories zone saves data for all the registered inventories.
	s.Register("inventories",new StorageZoneInventories(Item_GetInventoryManager()));
	
	// Flag compatibltlity zone provides a space for the legacy flag system.
	// If you don't need it, remove the line below and remove the script Storage_FlagCompat
	s.Register("flag_compat",new StorageZoneStruct());
}

function Storage_GetStatic(){
	return Storage_GetManager().Get("static");
}
function Storage_GetStaticGeneral(){
	return global._storage_cache_static_general;
}