///@arg string_name
///@arg default*
var KEY=argument[0];
var DEF="";
if(argument_count>=2){
	DEF=argument[1];
}

return (Lang_IsStringExists(KEY) ? ds_map_find_value(global._gmu_lang_string,KEY) : DEF);