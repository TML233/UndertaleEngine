///@arg font_name
function Lang_IsFontExists() {
	var KEY=argument[0];

	var VALUE=ds_map_find_value(global._gmu_lang_font,KEY);
	return font_exists(is_real(VALUE) ? VALUE : -1);


}
