///@arg enabled
function Border_SetEnabled() {
	var ENABLED=argument[0];

	if(ENABLED){
		window_set_size(960,540);
		border._enabled=true;
	}else{
		window_set_size(640,480);
		border._enabled=false;
	
		if(sprite_exists(border._sprite)){
			sprite_flush(border._sprite);
			border._sprite=-1;
		}
		if(sprite_exists(border._sprite_previous)){
			sprite_flush(border._sprite_previous);
			border._sprite_previous=-1;
		}
	}
	return true;


}
