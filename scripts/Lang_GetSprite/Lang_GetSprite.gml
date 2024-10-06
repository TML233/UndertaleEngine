///@arg sprite_name
///@arg default*
function Lang_GetSprite(KEY,DEF=-1) {
	if(!sprite_exists(DEF)&&DEF!=-1){
		DEF=-1;
	}

	return (Lang_IsSpriteExists(KEY) ? ds_map_find_value(global._gmu_lang_sprite,KEY) : DEF);
}
