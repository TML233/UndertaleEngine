// settings data is globally available and is not bound on save slot.
function Storage_Custom_Settings(storages){
	var s=new Storage(Storage_MakeGetFilePathFunc(false,"settings.json"));
	storages.Register("settings",s);
		
	s.Register("general",new StorageZoneStruct());
}

function Storage_GetSettings(){
	return Storage_GetManager().Get("settings");
}