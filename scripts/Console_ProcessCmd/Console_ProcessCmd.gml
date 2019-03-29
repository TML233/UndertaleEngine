if(GMU_CONSOLE_ENABLED){
	var cmd=global._gmu_console_list_cmd;
	
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
				cmd[|0]="script_execute";
				Console_ProcessCmd();
				break;
			}else{
				Console_OutputLine("Unknown command or script \""+cmd[|0]+"\"!");
			}
			break;
			
		case "clear":
			Console_Clear();
			break;
			
		case "echo":
			if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
				Console_OutputLine("Echo value must be a real or a string!");
				break;
			}
			
			Console_OutputLine(string(cmd[|1]));
			break;
			
		case "macro_define": case "define":
			if(!is_string(cmd[|1])){
				Console_OutputLine("Macro name must be a string!");
				break;
			}
			if(Console_IsRealString(cmd[|1])){
				Console_OutputLine("Macro name is invalid!");
				break;
			}
			if(!(is_real(cmd[|2])||is_string(cmd[|2]))){
				Console_OutputLine("Macro value must be a real or a string!");
				break;
			}
			if(Console_IsMacroDefined(cmd[|1])){
				Console_OutputLine("Macro \""+cmd[|1]+"\" is already defined!");
				break;
			}
			
			var result=Console_DefineMacro(cmd[|1],cmd[|2]);
			if(result){
				Console_OutputLine("\""+cmd[|1]+"\" -> "+(is_string(cmd[|2]) ? "\"" : "")+string(cmd[|2])+(is_string(cmd[|2]) ? "\"" : ""));
			}else{
				Console_OutputLine("Unknown error!");
			}
			break;
			
		case "macro_undefine": case "undefine":
			if(!is_string(cmd[|1])){
				Console_OutputLine("Macro name must be a string!");
				break;
			}
			if(Console_IsRealString(cmd[|1])){
				Console_OutputLine("Macro name is invalid!");
				break;
			}
			if(!Console_IsMacroDefined(cmd[|1])){
				Console_OutputLine("Macro \""+cmd[|1]+"\" is not defined yet!");
			}
			
			var result=Console_UndefineMacro(cmd[|1]);
			if(result){
				Console_OutputLine("\""+cmd[|1]+"\" -> UNDEFINED");
			}else{
				Console_OutputLine("Unknown error!");
			}
			break;
			
		case "macro_undefine_all": case "undefine_all":
			Console_UndefineAllMacro();
			Console_OutputLine("ALL -> UNDEFINED");
			break;
			
		case "quit": case "exit":
			game_end();
			break;
			
		case "restart":
			game_restart();
			break;
			
		case "room_goto":
			if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
				Console_OutputLine("Target room must be a real or a string!");
				break;
			}
			var target=-1;
			if(is_real(cmd[|1])){
				target=cmd[|1];
			}else if(is_string(cmd[|1])){
				target=asset_get_index(cmd[|1]);
			}
			if(room_exists(target)){
				room_goto(target);
				Console_OutputLine("Room goto succeeded.");
			}else{
				Console_OutputLine("Room "+(is_real(cmd[|1]) ? string(cmd[|1]) : "with name \""+cmd[|1]+"\"")+" doesn't exists!");
			}
			break;
			
		case "room_restart":
			room_restart();
			Console_OutputLine("Room restart succeeded.");
			break;
			
		case "script_execute":
			if(!(is_real(cmd[|1])||is_string(cmd[|1]))){
				Console_OutputLine("Target script must be a real or a string!");
				break;
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
				Console_OutputLine("Return value: "+(is_string(rv) ? "\"" : "")+string(rv)+(is_string(rv) ? "\"" : ""));
			}else{
				Console_OutputLine("Script "+(is_real(cmd[|1]) ? string(cmd[|1]) : "with name \""+cmd[|1]+"\"")+" doesn't exists!");
			}
			break;
	}
	return true;
}else{
	return false;
}