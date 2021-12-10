function Console_Init() {
	if(GMU_CONSOLE_ENABLED){
		global._gmu_console_map_macro=ds_map_create();
		global._gmu_console_cmd_split="";
	
		var dll=GMU_CONSOLE_CONFIG_DLL;
		var call=dll_cdecl;
		global._gmu_console_function_init=external_define(dll,"Init",call,ty_real,0);
		global._gmu_console_function_uninit=external_define(dll,"Uninit",call,ty_real,0);
		global._gmu_console_function_output=external_define(dll,"Output",call,ty_real,1,ty_string);
		global._gmu_console_function_output_line=external_define(dll,"OutputLine",call,ty_real,1,ty_string);
		global._gmu_console_function_clear=external_define(dll,"Clear",call,ty_real,0);
		global._gmu_console_function_get_input_number=external_define(dll,"GetInputNumber",call,ty_real,0);
		global._gmu_console_function_get_input=external_define(dll,"GetInput",call,ty_string,0);
		global._gmu_console_function_pop_input=external_define(dll,"PopInput",call,ty_real,0);
		global._gmu_console_function_set_visible=external_define(dll,"SetVisible",call,ty_real,1,ty_real);
		global._gmu_console_function_is_visible=external_define(dll,"IsVisible",call,ty_real,0);
		global._gmu_console_function_set_status_text=external_define(dll,"SetStatusText",call,ty_real,2,ty_real,ty_string);
		global._gmu_console_function_set_status_number=external_define(dll,"SetStatusNumber",call,ty_real,1,ty_real);
		global._gmu_console_function_set_status_ratio=external_define(dll,"SetStatusRatio",call,ty_real,2,ty_real,ty_real);
	
		external_call(global._gmu_console_function_init);
	
		Console_Custom();
	
		return true;
	}else{
		return false;
	}


}
