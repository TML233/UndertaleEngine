if(GMU_CONSOLE_ENABLED){
	var input=Console_GetInput();
	var list_cmd=global._gmu_console_list_cmd;
	
	ds_list_clear(list_cmd);
	
	var length=string_length(input);
	var proc=1;
	var cmd="";
	var str_mode=false;
	var str_input=false;
	while(proc<=length+1){
		var cmd_char=string_char_at(input,proc);
		if((cmd_char==" "&&!str_input)||proc>length){
			if(!str_mode){
				if(!ds_list_empty(list_cmd)){
					if(Console_IsRealString(cmd)){
						cmd=real(cmd);
					}else{
						if(Console_IsMacroDefined(cmd)){
							cmd=Console_GetMacro(cmd);
						}else{
							Console_OutputLine("Undefined macro \""+cmd+"\"!");
							return false;
						}
					}
				}
			}
			ds_list_add(list_cmd,cmd);
			str_mode=false;
			str_input=false;
			cmd="";
		}else if(cmd_char=="\""){
			str_mode=true;
			str_input=!str_input;
		}else{
			if(!str_mode||(str_mode&&str_input)){
				if(cmd_char=="\\"){
					proc+=1;
					cmd_char=string_char_at(input,proc);
					switch(cmd_char){
						case "n":
							cmd_char="\n";
							break;
						case "r":
							cmd_char="\r";
							break;
					}
				}
				cmd+=cmd_char;
			}
		}
		proc+=1;
	}
	
	return true;
}else{
	return false;
}