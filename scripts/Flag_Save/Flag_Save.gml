///@arg type
///@arg path*
function Flag_Save() {
	var TYPE=argument[0];
	var PATH="";
	if(argument_count>=2){
		PATH=argument[1];
	}

	if(PATH==""){
		PATH=Flag_GetSavePath(TYPE);
	}
	var file=file_text_open_write(PATH);

	var str=Flag_GetRaw(TYPE);
	file_text_write_string(file,str);

	file_text_close(file);

	Console_OutputLine("Flag type "+string(TYPE)+" saved to \""+PATH+"\".");

	return true;


}
