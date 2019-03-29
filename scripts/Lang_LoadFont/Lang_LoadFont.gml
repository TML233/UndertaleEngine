///@arg lang_id/name
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

var STR=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_FONT);

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
				if(file_exists(FILE_NAME+".ttf")){
					var size=12;
					var bold=false;
					var italic=false;
					var first=32;
					var last=128;
					if(file_exists(FILE_NAME+".ini")){
						ini_open(FILE_NAME+".ini");
						size=ini_read_real("font","size",12);
						bold=ini_read_real("font","bold",false);
						italic=ini_read_real("font","italic",false);
						first=ini_read_real("font","first",32);
						last=ini_read_real("font","last",128);
						ini_close();
					}
					var FONT=font_add(FILE_NAME+".ttf",size,bold,italic,first,last);
					if(font_exists(FONT)){
						var VALUE=ds_map_find_value(global._gmu_lang_font,str_name);
						if(VALUE!=undefined){
							if(font_exists(VALUE)){
								font_delete(VALUE);
							}
							ds_map_delete(global._gmu_lang_font,str_name);
						}
						ds_map_add(global._gmu_lang_font,str_name,FONT);
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