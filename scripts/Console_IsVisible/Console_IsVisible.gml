function Console_IsVisible() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_is_visible);
	}else{
		return false;
	}


}
