if(shake_x>0){
	if(_shake_time_x>0){
		_shake_time_x-=1;
	}else{
		if(!shake_random_x){
			if(_shake_positive_x){
				_shake_pos_x=shake_x;
			}else{
				shake_x-=shake_decrease_x;
				_shake_pos_x=-shake_x;
			}
			_shake_positive_x=!_shake_positive_x;
		}else{
			_shake_pos_x=random_range(-shake_x,shake_x);
			shake_x-=shake_decrease_x;
		}
		_shake_time_x=shake_speed_x;
	}
}else{
	shake_speed_x=0;
	shake_decrease_x=1;
	shake_random_x=false;
	_shake_time_x=0;
	_shake_pos_x=0;
	_shake_positive_x=true;
}
if(shake_y>0){
	if(_shake_time_y>0){
		_shake_time_y-=1;
	}else{
		if(!shake_random_y){
			if(_shake_positive_y){
				_shake_pos_y=shake_y;
			}else{
				shake_y-=shake_decrease_y;
				_shake_pos_y=-shake_y;
			}
			_shake_positive_y=!_shake_positive_y;
		}else{
			_shake_pos_y=random_range(-shake_y,shake_y);
			shake_y-=shake_decrease_y;
		}
		_shake_time_y=shake_speed_y;
	}
}else{
	shake_speed_y=0;
	shake_decrease_y=1;
	shake_random_y=false;
	_shake_time_y=0;
	_shake_pos_y=0;
	_shake_positive_y=true;
}

var sizeX=width/scale_x;
var sizeY=height/scale_y;
if(instance_exists(target)){
	var top=limit_top;
	var bottom=limit_bottom;
	var left=limit_left;
	var right=limit_right;
	if(use_room_limit){
		top=0;
		left=0;
		right=room_width;
		bottom=room_height;
	}
	// Here x y are the center camera pos
	x=target.x;
	y=target.y;
	if(x+sizeX/2>right) x=right-sizeX/2;
	if(x-sizeX/2<left) x=left+sizeX/2;
	if(y+sizeY/2>bottom) y=bottom-sizeY/2;
	if(y-sizeY/2<top) y=top+sizeY/2;
	// To top left camera pos
	x-=sizeX/2;
	y-=sizeY/2;
}
camera_set_view_pos(_camera,x+_shake_pos_x,y+_shake_pos_y);
camera_set_view_size(_camera,sizeX,sizeY);
camera_set_view_angle(_camera,angle);