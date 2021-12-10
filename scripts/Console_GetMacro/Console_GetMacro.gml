///@arg key
function Console_GetMacro() {
	if(GMU_CONSOLE_ENABLED){
		var KEY=argument[0];
	
		var map=global._gmu_console_map_macro;
		var result=ds_map_find_value(map,KEY);
	
		return result;
	}else{
		return false;
	}


}
