///@arg text
function Console_Output() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_output,argument[0]);
	}else{
		return false;
	}


}
