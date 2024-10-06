///@arg string_name
///@arg default*
function Lang_GetString(KEY,DEF="") {
	return (Lang_IsStringExists(KEY) ? ds_map_find_value(global._gmu_lang_string,KEY) : DEF);
}
