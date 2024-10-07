///@arg lang_name
function Lang_GetID() {
	return ds_list_find_index(global._gmu_lang_list,argument[0]);


}
