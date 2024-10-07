///@arg sprite_name
///@arg default*
function Lang_GetSprite() {
	var KEY=argument[0];
	var DEF=-1;
	if(argument_count>=2){
		DEF=argument[1];
	}

	if(!sprite_exists(DEF)&&DEF!=-1){
		DEF=-1;
	}

	return (Lang_IsSpriteExists(KEY) ? ds_map_find_value(global._gmu_lang_sprite,KEY) : DEF);


}
