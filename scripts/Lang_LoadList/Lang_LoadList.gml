function Lang_LoadList() {
	Lang_ClearList();

	var STR=Lang_LoadFileToString(GMU_LANG_PATH_BASE+GMU_LANG_PATH_LIST);
	if(STR==""){
		return false;
	}

	var LIST=global._gmu_lang_list;
	var FILE=file_text_open_from_string(STR);
	while(!file_text_eof(FILE)){
		var LANG=file_text_read_string(FILE);
		file_text_readln(FILE);
		if(!Lang_IsExists(LANG)){
			if(directory_exists(GMU_LANG_PATH_BASE+LANG)){
				ds_list_add(LIST,LANG);
			}
		}
	}

	file_text_close(FILE);

	return !ds_list_empty(LIST);


}
