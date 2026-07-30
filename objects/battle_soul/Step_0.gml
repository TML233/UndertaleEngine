_moving = (Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN) || Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.RIGHT) || (variable_instance_exists(id, "_vspd") && _vspd != 0));

var STATE=Battle_GetState();
if(STATE==BATTLE_STATE.TURN_PREPARATION||STATE==BATTLE_STATE.IN_TURN){
	if(follow_board){
		x+=battle_board.x-battle_board.xprevious;
		y+=battle_board.y-battle_board.yprevious;
	}
	
	while(position_meeting(x+sprite_width/2,y,block)){
		x-=0.01;
	}
	while(position_meeting(x-sprite_width/2,y,block)){
		x+=0.01;
	}
	while(position_meeting(x,y+sprite_height/2,block)){
		y-=0.01;
	}
	while(position_meeting(x,y-sprite_height/2,block)){
		y+=0.01;
	}
}

if(_inv>0){
	_inv-=1;
	if(image_speed==0){
		image_speed=1/2;
		image_index=1;
	}
}else{
	if(image_speed!=0){
		image_speed=0;
		image_index=0;
	}
}

if (keyboard_check_pressed(ord("1"))) {
    Battle_SetSoul(battle_soul_red);
} else if (keyboard_check_pressed(ord("2"))) {
    Battle_SetSoul(battle_soul_blue);
} else if (keyboard_check_pressed(ord("3"))) {
    Battle_SetSoul(battle_soul_yellow);
} else if (keyboard_check_pressed(ord("4"))) {
    Battle_SetSoul(battle_soul_green);
} else if (keyboard_check_pressed(ord("5"))) {
    Battle_SetSoul(battle_soul_purple);
} else if (keyboard_check_pressed(ord("6"))) {
    global.kr_enabled = !global.kr_enabled;
    global.kr = 0;
    audio_play_sound(snd_menu_confirm, 0, false);
} else if (keyboard_check_pressed(ord("7"))) {
    var b = instance_create_depth(x + 160, y, DEPTH_BATTLE.BULLET, battle_bullet);
    b.color = 1; // Cyan
    b.hspeed = -3;
} else if (keyboard_check_pressed(ord("8"))) {
    var b = instance_create_depth(x + 160, y, DEPTH_BATTLE.BULLET, battle_bullet);
    b.color = 2; // Orange
    b.hspeed = -3;
} else if (keyboard_check_pressed(ord("9"))) {
    instance_create_depth(x, y, DEPTH_BATTLE.BULLET, battle_bullet_spear);
}