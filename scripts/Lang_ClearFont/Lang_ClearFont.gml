function Lang_ClearFont() {
	while(!ds_map_empty(global._gmu_lang_font)){
		var KEY=ds_map_find_last(global._gmu_lang_font);
		var VALUE=ds_map_find_value(global._gmu_lang_font,KEY);
		ds_map_delete(global._gmu_lang_font,KEY);
		if(VALUE!=undefined&&font_exists(VALUE)){
			font_delete(VALUE);
		}
	}
	ds_map_clear(global._gmu_lang_font);
	return true;


}
