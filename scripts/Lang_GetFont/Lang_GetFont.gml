///@arg font_name
///@arg default*
function Lang_GetFont(KEY,DEF=-1) {
	if(!font_exists(DEF)&&DEF!=-1){
		DEF=-1;
	}

	return (Lang_IsFontExists(KEY) ? ds_map_find_value(global._gmu_lang_font,KEY) : DEF);
}
