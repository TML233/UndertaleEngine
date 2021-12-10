///@arg key
function Console_UndefineMacro() {
	if(GMU_CONSOLE_ENABLED){
		var KEY=argument[0];
	
		var map=global._gmu_console_map_macro;
		if(ds_map_exists(map,KEY)){
			ds_map_delete(map,KEY);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
