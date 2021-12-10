function Console_PopInput() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_pop_input);
	}else{
		return false;
	}


}
