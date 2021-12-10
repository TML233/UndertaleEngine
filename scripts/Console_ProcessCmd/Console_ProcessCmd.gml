///@arg list
function Console_ProcessCmd() {
	if(GMU_CONSOLE_ENABLED){
		var LIST=argument[0];
	
		var cmd=LIST;
		var silent=false;
		if(string_char_at(cmd[|0],1)=="!"){
			silent=true;
			cmd[|0]=string_delete(cmd[|0],1,1);
		}
	
		switch(cmd[|0]){
			default:
				var target=asset_get_index(cmd[|0]);
				if(script_exists(target)){
					var size=ds_list_size(cmd);
					var proc=size;
					repeat(size){
						cmd[|proc]=cmd[|proc-1];
						proc-=1;
					}
					cmd[|0]=(silent ? "!" : "")+"script_execute";
					var result=Console_ProcessCmd(cmd);
					return result;
				}else{
					if(!silent){
						Console_OutputLine("Unknown command or script \""+cmd[|0]+"\"!");
					}
					return false;
				}
			
			case "clear":
				Console_Clear();
				return true;
			
			case "echo":
				if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
					if(!silent){
						Console_OutputLine("Echo value must be a real or a string!");
					}
					return false;
				}else{
					if(!silent){
						Console_OutputLine(string(cmd[|1]));
					}
					return true;
				}
			
			case "macro_define": case "define":
				if(!is_string(cmd[|1])){
					if(!silent){
						Console_OutputLine("Macro name must be a string!");
					}
					return false;
				}
				if(Console_IsRealString(cmd[|1])){
					if(!silent){
						Console_OutputLine("Macro name is invalid!");
					}
					return false;
				}
				if(!(is_real(cmd[|2])||is_string(cmd[|2]))){
					if(!silent){
						Console_OutputLine("Macro value must be a real or a string!");
					}
					return false;
				}
				if(Console_IsMacroDefined(cmd[|1])){
					Console_UndefineMacro(cmd[|1]);
				}
			
				var result=Console_DefineMacro(cmd[|1],cmd[|2]);
				if(result){
					if(!silent){
						Console_OutputLine("\""+cmd[|1]+"\" -> "+(is_string(cmd[|2]) ? "\"" : "")+string(cmd[|2])+(is_string(cmd[|2]) ? "\"" : ""));
					}
					return true;
				}else{
					if(!silent){
						Console_OutputLine("Unknown error!");
					}
					return false;
				}
			
			case "macro_undefine": case "undefine":
				if(!is_string(cmd[|1])){
					if(!silent){
						Console_OutputLine("Macro name must be a string!");
					}
					return false;
				}
				if(Console_IsRealString(cmd[|1])){
					if(!silent){
						Console_OutputLine("Macro name is invalid!");
					}
					return false;
				}
				if(!Console_IsMacroDefined(cmd[|1])){
					if(!silent){
						Console_OutputLine("Macro \""+cmd[|1]+"\" is not defined yet!");
					}
					return false;
				}
			
				var result=Console_UndefineMacro(cmd[|1]);
				if(result){
					if(!silent){
						Console_OutputLine("\""+cmd[|1]+"\" -> UNDEFINED");
					}
					return true;
				}else{
					if(!silent){
						Console_OutputLine("Unknown error!");
					}
					return false;
				}
			
			case "macro_undefine_all": case "undefine_all":
				Console_UndefineAllMacro();
				if(!silent){
					Console_OutputLine("ALL -> UNDEFINED");
				}
				return true;
			
			case "quit": case "exit":
				game_end();
				return true;
			
			case "restart":
				game_restart();
				return true;
			
			case "room_goto":
				if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
					if(!silent){
						Console_OutputLine("Target room must be a real or a string!");
					}
					return false;
				}
				var target=-1;
				if(is_real(cmd[|1])){
					target=cmd[|1];
				}else if(is_string(cmd[|1])){
					target=asset_get_index(cmd[|1]);
				}
				if(room_exists(target)){
					room_goto(target);
					if(!silent){
						Console_OutputLine("Room goto succeeded.");
					}
					return true;
				}else{
					if(!silent){
						Console_OutputLine("Room "+(is_real(cmd[|1]) ? string(cmd[|1]) : "with name \""+cmd[|1]+"\"")+" doesn't exists!");
					}
					return false;
				}
			
			case "room_restart":
				room_restart();
				if(!silent){
					Console_OutputLine("Room restart succeeded.");
				}
				return true;
			
			case "script_execute":
				if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
					if(!silent){
						Console_OutputLine("Target script must be a real or a string!");
					}
					return false;
				}
				var target=-1;
				if(is_real(cmd[|1])){
					target=cmd[|1];
				}else if(is_string(cmd[|1])){
					target=asset_get_index(cmd[|1]);
				}
				if(script_exists(target)){
					var rv=-1;
					switch(ds_list_size(cmd)-2){
						case 0:
							rv=script_execute(target);
							break;
						case 1:
							rv=script_execute(target,cmd[|2]);
							break;
						case 2:
							rv=script_execute(target,cmd[|2],cmd[|3]);
							break;
						case 3:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4]);
							break;
						case 4:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5]);
							break;
						case 5:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6]);
							break;
						case 6:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7]);
							break;
						case 7:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8]);
							break;
						case 8:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9]);
							break;
						case 9:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10]);
							break;
						case 10:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11]);
							break;
						case 11:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12]);
							break;
						case 12:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13]);
							break;
						case 13:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14]);
							break;
						case 14:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14],cmd[|15]);
							break;
						case 15:
							rv=script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14],cmd[|15],cmd[|16]);
							break;
					}
					if(!silent){
						Console_OutputLine("Return value: "+(is_string(rv) ? "\"" : "")+string(rv)+(is_string(rv) ? "\"" : ""));
					}
					return rv;
				}else{
					if(!silent){
						Console_OutputLine("Script "+(is_real(cmd[|1]) ? string(cmd[|1]) : "with name \""+cmd[|1]+"\"")+" doesn't exists!");
					}
					return false;
				}
		}
		return false;
	}else{
		return false;
	}


}
