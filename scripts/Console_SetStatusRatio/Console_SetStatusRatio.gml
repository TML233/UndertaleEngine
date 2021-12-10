///@arg split
///@arg ratio
function Console_SetStatusRatio() {
	if(GMU_CONSOLE_ENABLED){
		return external_call(global._gmu_console_function_set_status_ratio,argument[0],argument[1]);
	}else{
		return false;
	}


}
