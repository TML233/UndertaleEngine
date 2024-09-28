function Storage_Init(){
	global._storage_manager=new RegisterManager();
	Storage_Custom();
}
function Storage_Uninit(){
	delete global._storage_manager;
}

function Storage_GetManager(){
	return global._storage_manager;
}