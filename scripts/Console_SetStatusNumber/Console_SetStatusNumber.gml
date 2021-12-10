///@arg number
function Console_SetStatusNumber() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_set_status_number,argument[0]);
	}else{
		return false;
	}


}
