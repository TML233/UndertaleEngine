function Console_GetInput() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_get_input);
	}else{
		return "";
	}


}
