if(sprite_exists(sprite)){
	audio_play_sound(snd_vaporize,0,false);
	
	_inst=instance_create_depth(x,y,0,battle_death_particle_collision);
	_inst.sprite_index=sprite;
	_inst.image_xscale=scale_x;
	_inst.image_yscale=scale_y;
	_inst.image_blend=color;
	_inst.visible=false;
	
	_line=y-sprite_get_yoffset(sprite)*scale_y;
	if(_line<0){
		_line=0;
	}
}else{
	instance_destroy();
}