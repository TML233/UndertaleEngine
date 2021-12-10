///@arg lang_id/name
function Lang_LoadSprite() {
	var LANG=argument[0];

	if(!Lang_IsExists(LANG)){
		return false;
	}

	if(is_real(LANG)){
		LANG=Lang_GetName(LANG);
	}

	if(!file_exists(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_SPRITE)){
		return false;
	}

	var LIST=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_SPRITE);
	var FILE=file_text_open_from_string(LIST);
	while(!file_text_eof(FILE)){
		var TARGET=file_text_read_string(FILE);
		file_text_readln(FILE);
		var PATH=GMU_LANG_PATH_BASE+LANG+"/"+TARGET;
		if(file_exists(PATH)){
			ini_open(PATH);
			var key=ini_read_string("sprite","key","");
			var src=ini_read_string("sprite","source","");
			var img_num=ini_read_real("sprite","image_number",1);
			var remove_back=ini_read_real("sprite","remove_background",false);
			var smooth=ini_read_real("sprite","is_smooth",false);
			var orig_x=ini_read_real("sprite","origin_x",0);
			var orig_y=ini_read_real("sprite","origin_y",0);
			ini_close();
		
			if(key!=""){
				var src_path=filename_path(PATH)+src;
				if(file_exists(src_path)){
					var SPR=sprite_add(src_path,img_num,remove_back,smooth,orig_x,orig_y);
					if(sprite_exists(SPR)){
						var VALUE=ds_map_find_value(global._gmu_lang_sprite,key);
						if(is_real(VALUE)){
							if(sprite_exists(VALUE)){
								sprite_delete(VALUE);
							}
							ds_map_delete(global._gmu_lang_sprite,key);
						}
						ds_map_add(global._gmu_lang_sprite,key,SPR);
					}
				}
			}
		}
	}
	file_text_close(FILE);
	return true;


}
