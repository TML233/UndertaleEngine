if(_enabled){
	if(sprite_exists(_sprite_previous)&&_alpha>=1){
		sprite_flush(_sprite_previous);
		_sprite_previous=-1;
	}
}