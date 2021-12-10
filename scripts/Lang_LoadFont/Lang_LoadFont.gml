///@arg lang_id/name
function Lang_LoadFont() {
	var LANG=argument[0];

	if(!Lang_IsExists(LANG)){
		return false;
	}

	if(is_real(LANG)){
		LANG=Lang_GetName(LANG);
	}

	if(!file_exists(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_FONT)){
		return false;
	}

	var LIST=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_FONT);
	var FILE=file_text_open_from_string(LIST);
	while(!file_text_eof(FILE)){
		var TARGET=file_text_read_string(FILE);
		file_text_readln(FILE);
		var PATH=GMU_LANG_PATH_BASE+LANG+"/"+TARGET;
		if(file_exists(PATH)){
			ini_open(PATH);
			var key=ini_read_string("font","key","");
			var src=ini_read_string("font","source","");
			var is_sprite=ini_read_real("font","is_sprite",false);
		
			var size=ini_read_real("font","size",12);
			var bold=ini_read_real("font","bold",false);
			var italic=ini_read_real("font","italic",false);
			var first=ini_read_real("font","first",32);
			var last=ini_read_real("font","last",128);
		
			var string_map=ini_read_string("font","string_map","");
			var is_proportional=ini_read_real("font","is_proportional",false);
			var separation=ini_read_real("font","separation",0);
			ini_close();
		
			if(key!=""){
				var FONT=-1;
				if(!is_sprite){
					var src_path=filename_path(PATH)+src;
					if(file_exists(src_path)){
						FONT=font_add(src_path,size,bold,italic,first,last);
					}
				}else{
					if(Lang_IsSpriteExists(src)){
						if(string_map==""){
							FONT=font_add_sprite(Lang_GetSprite(src),first,is_proportional,separation);
						}else{
							FONT=font_add_sprite_ext(Lang_GetSprite(src),string_map,is_proportional,separation);
						}
					}
				}
				if(font_exists(FONT)){
					var VALUE=ds_map_find_value(global._gmu_lang_font,key);
					if(is_real(VALUE)){
						if(font_exists(VALUE)){
							font_delete(VALUE);
						}
						ds_map_delete(global._gmu_lang_font,key);
					}
					ds_map_add(global._gmu_lang_font,key,FONT);
				}
			}
		}
	}
	file_text_close(FILE);
	return true;


}
