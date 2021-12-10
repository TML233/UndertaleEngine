///@arg split
///@arg text
function Console_SetStatusText() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_set_status_text,argument[0],argument[1]);
	}else{
		return false;
	}


}
