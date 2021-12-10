function Console_GetInputNumber() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_get_input_number);
	}else{
		return 0;
	}


}
