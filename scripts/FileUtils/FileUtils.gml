// Try read all text from a file.
// Returns undefined if the file fails to load.
function File_ReadAllText(path){
	var file=file_text_open_read(path);
	if(file==-1){
		return undefined;
	}
	
	var text="";
	while(!file_text_eof(file)){
		text+=file_text_readln(file);
	}
	return text;
}

// Try write all text into a file.
// Returns true or false to indicate whether the operation is successful.
function File_WriteAllText(path, text){
	var file=file_text_open_write(path);
	if(file==-1){
		return false;
	}
	file_text_write_string(file,text);
	file_text_close(file);
	return true;
}