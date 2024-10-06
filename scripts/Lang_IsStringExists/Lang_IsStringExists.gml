///@arg string_name
function Lang_IsStringExists(KEY) {
	return is_string(ds_map_find_value(global._gmu_lang_string,KEY));
}
