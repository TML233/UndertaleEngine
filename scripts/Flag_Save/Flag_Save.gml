///@arg type
var TYPE=argument[0];

var map=global._flag;
var map_f=-1;
if(ds_map_exists(map,TYPE)){
	map_f=ds_map_find_value(map,TYPE);
}else{
	Console_OutputLine("Attempted to save non-existing flag type "+string(TYPE)+"!");
	return false;
}

var path=Flag_GetSavePath(TYPE);
var file=file_text_open_write(path);

var str=ds_map_write(map_f);
file_text_write_string(file,str);

file_text_close(file);

Console_OutputLine("Flag type "+string(TYPE)+" saved to \""+path+"\".");

return true;