// info data is shown on the menu before you load the game.
function Storage_Custom_Info(storages){
	var s=new Storage(Storage_MakeGetFilePathFunc(true,"info.json"));
	storages.Register("info",s);
		
	global._storage_cache_info_general=new StorageZoneStruct();
	s.Register("general",global._storage_cache_info_general);
}

function Storage_GetInfo(){
	return Storage_GetManager().Get("info");
}
function Storage_GetInfoGeneral(){
	return global._storage_cache_info_general;
}
function Storage_SaveGame(){
	var sStatic=Storage_GetStatic();
	var sInfo=Storage_GetInfo();
	
	var zStatic=Storage_GetStaticGeneral();
	var zInfo=Storage_GetInfoGeneral();
	var roomName=room_get_name(room);
	zStatic.Set(FLAG_STATIC_ROOM,roomName);
	zInfo.Set(FLAG_INFO_LV,Player_GetLv());
	zInfo.Set(FLAG_INFO_NAME,Player_GetName());
	zInfo.Set(FLAG_INFO_TIME,zStatic.Get(FLAG_STATIC_TIME,0));
	zInfo.Set(FLAG_INFO_ROOM,roomName);
	
	sStatic.SaveToFile();
	sInfo.SaveToFile();
}
function Storage_LoadGame(){
	var sStatic=Storage_GetStatic();
	var sDynamic=Storage_GetDynamic();
	sStatic.LoadFromFile();
	sDynamic.LoadFromFile();
}