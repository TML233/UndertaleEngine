///@arg type
function Flag_Load(TYPE,PATH="") {
	if(PATH==""){
		PATH=Flag_GetSavePath(TYPE);
	}
	if(!file_exists(PATH)){
		show_debug_message("Attempted to load flag type "+string(TYPE)+" from non-existing file \""+PATH+"\"!");
		return false;
	}

	var file=file_text_open_read(PATH);

	var str=file_text_read_string(file);
	Flag_SetRaw(TYPE,str);

	file_text_close(file);

	show_debug_message("Flag loaded from \""+PATH+"\".");

	return true;


}
