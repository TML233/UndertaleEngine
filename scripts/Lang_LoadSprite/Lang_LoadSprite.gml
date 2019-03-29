///@arg lang_id/name
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

var STR=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_SPRITE);

var proc=0;
var str_mode=false;
var str_input_name=true;
var str_name="";
var str_text="";
while(string_length(STR)>proc){
	proc+=1;
	var CHAR=string_char_at(STR,proc);
	if(CHAR="\""){
		str_mode=!str_mode;
		
		if(!str_mode){
			str_input_name=!str_input_name;
			
			if(str_input_name){
				var FILE_NAME=GMU_LANG_PATH_BASE+LANG+"/"+str_text;
				if(file_exists(FILE_NAME+".png")){
					var img_num=1;
					var smooth=false;
					var orig_x=0;
					var orig_y=0;
					if(file_exists(FILE_NAME+".ini")){
						ini_open(FILE_NAME+".ini");
						img_num=ini_read_real("sprite","img_num",1);
						smooth=ini_read_real("sprite","smooth",false);
						orig_x=ini_read_real("sprite","orig_x",0);
						orig_y=ini_read_real("sprite","orig_y",0);
						ini_close();
					}
					var SPR=sprite_add(FILE_NAME+".png",img_num,false,smooth,orig_x,orig_y);
					if(sprite_exists(SPR)){
						var VALUE=ds_map_find_value(global._gmu_lang_sprite,str_name);
						if(VALUE!=undefined){
							if(sprite_exists(VALUE)){
								sprite_delete(VALUE);
							}
							ds_map_delete(global._gmu_lang_sprite,str_name);
						}
						ds_map_add(global._gmu_lang_sprite,str_name,SPR);
					}
				}
				str_name="";
				str_text="";
			}
		}
	}else if(str_mode){
		if(CHAR!="\t" && CHAR!="\n" && CHAR!="\r"){
			if(str_input_name){
				str_name+=CHAR;
			}else{
				str_text+=CHAR;
			}
		}
	}
}

return true;