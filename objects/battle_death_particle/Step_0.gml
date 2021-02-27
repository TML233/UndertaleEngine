randomize();

if(_line<480){
	repeat(4){
		var X=0;
		repeat(640/2){
			if(position_meeting(X,_line,_inst)){
				instance_create_depth(X,_line,DEPTH_BATTLE.ENEMY,battle_death_particle_pixel);
			}
			X+=2;
		}
		_line+=1;
	}
}

if(instance_exists(_inst)&&_line>y-sprite_get_yoffset(sprite)*scale_y+sprite_get_height(sprite)*scale_y){
	instance_destroy();
}