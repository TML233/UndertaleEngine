///@arg font_name
function Lang_IsFontExists(KEY) {

	var VALUE=ds_map_find_value(global._gmu_lang_font,KEY);
	return font_exists(is_handle(VALUE) ? VALUE : -1);


}
