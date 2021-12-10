function Console_UndefineAllMacro() {
	if(GMU_CONSOLE_ENABLED){
		var map=global._gmu_console_map_macro;
		ds_map_clear(map);
		return true;
	}else{
		return false;
	}


}
