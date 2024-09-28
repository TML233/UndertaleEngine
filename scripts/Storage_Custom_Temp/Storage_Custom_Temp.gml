// temp data provides a space for misc info that doesn't need to be saved.
// This reduces the usage of global variables and the need of initing them in a separate script.
function Storage_Custom_Temp(storages){
	var s=new Storage(undefined);
	storages.Register("temp",s);
	
	// Make a cache to make accessing faster since we use it a lot.
	global._storage_cache_temp_general=new StorageZoneStruct();
	s.Register("general",global._storage_cache_temp_general);
}

function Storage_GetTemp(){
	return Storage_GetManager().Get("temp");
}
function Storage_GetTempGeneral(){
	return global._storage_cache_temp_general;
}