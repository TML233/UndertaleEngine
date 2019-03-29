///@arg visible
if(GMU_CONSOLE_ENABLED){
	return external_call(global._gmu_console_function_set_visible,argument[0]);
}else{
	return false;
}