///@arg lang_id/name
function Lang_IsExists() {
	var LANG=argument[0];

	if(is_real(LANG)){
		return is_string(ds_list_find_value(global._gmu_lang_list,LANG));
	}else if(is_string(LANG)){
		return ds_list_find_index(global._gmu_lang_list,LANG)!=-1;
	}


}
