///@arg sprite_name
function Lang_IsSpriteExists(KEY) {
	var VALUE=ds_map_find_value(global._gmu_lang_sprite,KEY);
	return sprite_exists(is_handle(VALUE) ? VALUE : -1);
}
