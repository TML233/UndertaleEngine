///@arg sprite
///@arg fade*
///@arg time*
function Border_SetSprite() {
	var SPRITE=argument[0];
	var FADE=true;
	var TIME=60;
	if(argument_count>=2){
		FADE=argument[1];
	}
	if(argument_count>=3){
		TIME=argument[2];
	}

	if(SPRITE!=border._sprite_previous&&SPRITE!=border._sprite){
		if(sprite_exists(border._sprite_previous)){
			sprite_flush(border._sprite_previous);
		}
	}

	border._sprite_previous=border._sprite;
	border._sprite=SPRITE;

	if(FADE){
		border._alpha=0;
		Anim_Create(border,"_alpha",0,0,0,1,TIME);
	}

	return true;


}
