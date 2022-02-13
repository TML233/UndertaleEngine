var proc=0;
repeat(4){
	if(move[proc]>0){
		if (object_index != char_player) {
			if(!dir_locked){
				dir=proc;
			}
		}
		var move_x=0;
		var move_y=0;
		if(proc==DIR.UP || proc==DIR.DOWN){
			move_y=0.05*(proc==DIR.UP ? -1 : 1);
		}else if(proc==DIR.LEFT || proc==DIR.RIGHT){
			move_x=0.05*(proc==DIR.LEFT ? -1 : 1);
		}
		repeat(move_speed[proc]*30){
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
				if (object_index == char_player) {
					if (collision) {
						if (place_meeting(x,y,block_corner_topleft)) {
							if (Input_IsHeld(INPUT.LEFT)) {
								y+=(move_speed[DIR.DOWN]*0.05)*30;
							}
							if (Input_IsHeld(INPUT.UP)) {
								x+=(move_speed[DIR.RIGHT]*0.05)*30;
							}
						}
						if (place_meeting(x,y,block_corner_topright)) {
							if (Input_IsHeld(INPUT.RIGHT)) {
								y+=(move_speed[DIR.DOWN]*0.05)*30;
							}
							if (Input_IsHeld(INPUT.UP)) {
								x-=(move_speed[DIR.LEFT]*0.05)*30;
							}
						}
						if (place_meeting(x,y,block_corner_bottomleft)) {
							if (Input_IsHeld(INPUT.LEFT)) {
								y-=(move_speed[DIR.UP]*0.05)*30;
							}
							if (Input_IsHeld(INPUT.DOWN)) {
								x+=(move_speed[DIR.RIGHT]*0.05)*30;
							}
						}
						if (place_meeting(x,y,block_corner_bottomright)) {
							if (Input_IsHeld(INPUT.RIGHT)) {
								y-=(move_speed[DIR.UP]*0.05)*30;
							}
							if (Input_IsHeld(INPUT.DOWN)) {
								x-=(move_speed[DIR.LEFT]*0.05)*30;
							}
						}
						if (!place_meeting(x,y,block_corner_bottomright)) ||
						   (!place_meeting(x,y,block_corner_topright)) ||
						   (!place_meeting(x,y,block_corner_bottomleft)) ||
						   (!place_meeting(x,y,block_corner_topleft)) {
							x+=move_x;
							y+=move_y;
						}
					}
				}
				else {
					x+=move_x;
					y+=move_y;
				}
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
	}else if(talking){
		sprite_index=res_talk_sprite[dir];
		image_index=res_talk_image[dir];
		image_speed=res_talk_speed[dir];
	}else{
		sprite_index=res_idle_sprite[dir];
		image_index=res_idle_image[dir];
		image_speed=res_idle_speed[dir];
	}
}

_talking_previous=talking;
_dir_previous=dir;
_move_previous=move[dir];