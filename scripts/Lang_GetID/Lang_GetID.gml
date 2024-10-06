///@arg lang_name
function Lang_GetID(lang_name) {
	return ds_list_find_index(global._gmu_lang_list,lang_name);
}