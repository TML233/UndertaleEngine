if(_line<480){
	repeat(4){
		var X=0;
		repeat(640/2){
			if(position_meeting(X,_line,_inst)){
				part_particles_create(_ps,X,_line,_p,1);
			}
			X+=2;
		}
		_line+=2;
	}
}

if(instance_exists(_inst)&&_line>y-sprite_get_yoffset(sprite)*scale_y+sprite_get_height(sprite)*scale_y&&part_particles_count(_ps)==0){
	instance_destroy();
}