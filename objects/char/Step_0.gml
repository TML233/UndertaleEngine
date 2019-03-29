var proc=0;
repeat(4){
	if(move[proc]>0){
		if(!dir_locked){
			dir=proc;
		}
		var move_x=0;
		var move_y=0;
		if(proc==DIR.UP || proc==DIR.DOWN){
			move_y=0.05*(proc==DIR.UP ? -1 : 1);
		}else if(proc==DIR.LEFT || proc==DIR.RIGHT){
			move_x=0.05*(proc==DIR.LEFT ? -1 : 1);
		}
		repeat(move_speed[proc]*20){
			var cmove=true;
			if(collision){
				var list=_collision_list;
				ds_list_clear(list);
				var num=instance_place_list(x+move_x,y+move_y,block,list,false);
				var procl=0;
				repeat(num){
					var inst=list[|procl];
					if(instance_exists(inst)){
						if(inst.block_enabled){
							cmove=false;
							break;
						}
					}
					procl+=1;
				}
			}
			if(cmove){
				x+=move_x;
				y+=move_y;
			}else{
				break;
			}
		}
		move[proc]-=1;
	}
	proc+=90;
}

var refresh=((dir!=_dir_previous || talking!=_talking_previous || (move[dir]>0)!=(_move_previous>0)) && !res_override);
if(refresh){
	if(move[DIR.UP]>0 || move[DIR.DOWN]>0 || move[DIR.LEFT]>0 || move[DIR.RIGHT]>0){
		sprite_index=res_move_sprite[dir];
		image_index=res_move_image[dir];
		image_speed=res_move_speed[dir];
		image_xscale*=((res_move_flip_x[dir]&&sign(image_xscale)==1)||(!res_move_flip_x[dir]&&sign(image_xscale)==-1) ? -1 : 1);
	}else if(talking){
		sprite_index=res_talk_sprite[dir];
		image_index=res_talk_image[dir];
		image_speed=res_talk_speed[dir];
		image_xscale*=((res_talk_flip_x[dir]&&sign(image_xscale)==1)||(!res_talk_flip_x[dir]&&sign(image_xscale)==-1) ? -1 : 1);
	}else{
		sprite_index=res_idle_sprite[dir];
		image_index=res_idle_image[dir];
		image_speed=res_idle_speed[dir];
		image_xscale*=((res_idle_flip_x[dir]&&sign(image_xscale)==1)||(!res_idle_flip_x[dir]&&sign(image_xscale)==-1) ? -1 : 1);
	}
}

_talking_previous=talking;
_dir_previous=dir;
_move_previous=move[dir];