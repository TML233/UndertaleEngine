///@arg lang_id/name
function Lang_LoadString() {
	var LANG=argument[0];

	if(!Lang_IsExists(LANG)){
		return false;
	}

	if(is_real(LANG)){
		LANG=Lang_GetName(LANG);
	}

	if(!file_exists(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_STRING)){
		return false;
	}

	var MAP=global._gmu_lang_string;
	var LIST=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_STRING);
	var FILE=file_text_open_from_string(LIST);
	while(!file_text_eof(FILE)){
		var TARGET=file_text_read_string(FILE);
		file_text_readln(FILE);
		var PATH=GMU_LANG_PATH_BASE+LANG+"/"+TARGET;
		if(file_exists(PATH)){
			var STR=Lang_LoadFileToString(PATH);
			var obj=json_parse(STR);
			if(typeof(obj)!="struct"){
				continue;
			}
			var names=variable_struct_get_names(obj);
			for(var i=0;i<array_length(names);i+=1){
				var key=names[i];
				var innerLine=variable_struct_get(obj,key);
				if(typeof(innerLine)!="string"){
					continue;
				}
				ds_map_add(MAP,key,innerLine);
			}
		}
	}
	file_text_close(FILE);
	return true;


}
