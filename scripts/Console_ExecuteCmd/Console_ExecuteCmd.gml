///@arg cmd
function Console_ExecuteCmd() {
	if(GMU_CONSOLE_ENABLED){
		var CMD=argument[0];
	
		var list=ds_list_create();
		var result=0;
		global._gmu_console_cmd_split="";
	
		if(Console_ParseCmd(CMD,list)){
			result=Console_ProcessCmd(list);
		}
		ds_list_destroy(list);
	
		if(string_length(global._gmu_console_cmd_split)>0){
			Console_ExecuteCmd(global._gmu_console_cmd_split);
		}
	
		return result;
	}else{
		return false;
	}


}
