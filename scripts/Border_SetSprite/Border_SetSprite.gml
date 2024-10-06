///@arg sprite
///@arg fade*
///@arg time*
function Border_SetSprite(SPRITE,FADE=true,TIME=60) {
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
