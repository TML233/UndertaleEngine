function Storage_Custom(){
	var storages=Storage_GetManager();
	
	global._save_slot=0;
	
	Storage_Custom_Static(storages);
	Storage_Custom_Dynamic(storages);
	Storage_Custom_Info(storages);
	Storage_Custom_Settings(storages);
	Storage_Custom_Temp(storages);
	
	Player_CustomInitialData();
}

function Storage_MakeGetFilePathFunc(useSlots,fileName){
	var closure={
		useSlots: useSlots,
		fileName: fileName
	};
	var func=function(){
		var path=GAME_SAVE_NAME+"/";
		if(useSlots){
			var slot=Storage_GetSaveSlot();
			path+=$"file{slot}/";
		}
		path+=fileName;
		return path;
	};
	return method(closure,func);
}

function Storage_SetSaveSlot(slot){
	global._save_slot=slot;
}
function Storage_GetSaveSlot(){
	return global._save_slot;
}