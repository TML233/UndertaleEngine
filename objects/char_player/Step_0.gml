var specialKey = (Input_IsHeld(INPUT.UP)&&Input_IsHeld(INPUT.DOWN));
var readyToDance = specialKey&&place_meeting(x,y-move_speed[DIR.UP],block);
var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&!global._gmu_cutscene);
if(can_move){
	if(Input_IsHeld(INPUT.UP)&&!readyToDance){
		move[DIR.UP]=2;
	}else if(Input_IsHeld(INPUT.DOWN)){
		move[DIR.DOWN]=2;
	}
	if(Input_IsHeld(INPUT.LEFT)){
		move[DIR.LEFT]=2;
	}else if(Input_IsHeld(INPUT.RIGHT)){
		move[DIR.RIGHT]=2;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		var inst=noone;
		if(dir==DIR.UP){
			inst=collision_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,char,false,true);
		}
		if(dir==DIR.DOWN){
			inst=collision_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,char,false,true);
		}
		if(dir==DIR.LEFT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,char,false,true);
		}
		if(dir==DIR.RIGHT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,char,false,true);
		}
		if(instance_exists(inst)){
			with(inst){
				event_user(0);
			}
		}
	}
	if(!instance_exists(ui_dialog)){
		if(Input_IsPressed(INPUT.MENU)){
			instance_create_depth(0,0,0,ui_menu);
		}
	}
	
	if(Input_IsHeld(INPUT.LEFT))&&(Input_IsHeld(INPUT.RIGHT)) {
		move[DIR.RIGHT]=0;
	}
	
	if(specialKey&&!readyToDance)
		move[DIR.DOWN]=0;
	
	if(move[DIR.UP]>0){
		if (readyToDance||(move[DIR.LEFT]<=0||dir!=DIR.LEFT)&&(move[DIR.RIGHT]<=0||dir!=DIR.RIGHT)) {
			dir = DIR.UP;
		}
	}
	
	if(move[DIR.DOWN]>0){
		if ((move[DIR.LEFT]<=0||dir!=DIR.LEFT)&&(move[DIR.RIGHT]<=0||dir!=DIR.RIGHT)) {
			dir = DIR.DOWN;
		}
	}
	
	if(move[DIR.LEFT]>0){
		if (!specialKey&&(move[DIR.UP]<=0||dir!=DIR.UP)&&(move[DIR.DOWN]<=0||dir!=DIR.DOWN)) {
			dir = DIR.LEFT;
		}
	}
	
	if(move[DIR.RIGHT]>0){
		if (!specialKey&&(move[DIR.UP]<=0||dir!=DIR.UP)&&(move[DIR.DOWN]<=0||dir!=DIR.DOWN)) {
			dir = DIR.RIGHT;
		}
	}
}

event_inherited();