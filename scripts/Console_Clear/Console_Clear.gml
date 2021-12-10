function Console_Clear() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_clear);
	}else{
		return false;
	}


}
