///@arg type
var TYPE=argument[0];

var path=Flag_GetSavePath(TYPE);

if(!file_exists(path)){
	Console_OutputLine("Attempted to load flag type "+string(TYPE)+" from non-existing file \""+path+"\"!");
	return false;
}

var map=global._flag;
var map_f=-1;
if(ds_map_exists(map,TYPE)){
	map_f=ds_map_find_value(map,TYPE);
	ds_map_clear(map_f);
}else{
	map_f=ds_map_create();
	ds_map_add(map,TYPE,map_f);
}

var file=file_text_open_read(path);

var str=file_text_read_string(file);
ds_map_read(map_f,str);

file_text_close(file);

Console_OutputLine("Flag loaded from \""+path+"\".");

return true;