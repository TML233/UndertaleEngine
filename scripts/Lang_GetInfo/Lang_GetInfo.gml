///@arg lang_name
///@arg string_name
///@arg default*
function Lang_GetInfo() {
	var LANG=argument[0];
	var KEY=argument[1];
	var DEF="";
	if(argument_count>=3){
		DEF=argument[2];
	}

	if(!Lang_IsExists(LANG)){
		return DEF;
	}

	if(!file_exists(GMU_LANG_PATH_STRING+LANG+GMU_LANG_PATH_INFO)){
		return DEF;
	}

	ini_open(GMU_LANG_PATH_STRING+LANG+GMU_LANG_PATH_INFO);
	var VALUE=ini_read_string("info",KEY,DEF);
	ini_close();

	return VALUE;


}
