///@arg font_name
///@arg default*
function Lang_GetFont() {
	var KEY=argument[0];
	var DEF=-1;
	if(argument_count>=2){
		DEF=argument[1];
	}

	if(!font_exists(DEF)&&DEF!=-1){
		DEF=-1;
	}

	return (Lang_IsFontExists(KEY) ? ds_map_find_value(global._gmu_lang_font,KEY) : DEF);


}
