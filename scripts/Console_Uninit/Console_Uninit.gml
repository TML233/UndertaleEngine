function Console_Uninit() {
	if(GMU_CONSOLE_ENABLED){
		ds_map_destroy(global._gmu_console_map_macro);
	
		external_call(global._gmu_console_function_uninit);
	
		external_free(GMU_CONSOLE_CONFIG_DLL);
	
		return true;
	}else{
		return false;
	}


}
