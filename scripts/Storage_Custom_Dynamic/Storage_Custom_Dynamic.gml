// dynamic data is used for data that won't revert when player loads.
// For example, you met Flowey and didn't save the game. Flowey will have
// a different dialog when you met him again at the same place.
// !! To achieve this, you need to save the dynamic data after changing the values.
//    Use Storage_SaveDynamic
function Storage_Custom_Dynamic(storages){
	var s=new Storage(Storage_MakeGetFilePathFunc(true,"dynamic.json"));
	storages.Register("dynamic",s);
		
	s.Register("general",new StorageZoneStruct());
}

function Storage_GetDynamic(){
	return Storage_GetManager().Get("dynamic");
}
function Storage_SaveDynamic(){
	var s=Storage_GetDynamic();
	s.SaveToFile();
}