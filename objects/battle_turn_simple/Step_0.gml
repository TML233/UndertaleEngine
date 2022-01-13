_angle+=4;
_timer+=1;
var inst=_inst[0];
if(instance_exists(inst)){
	inst.x=battle_board.x-60;
	if _timer = 90{
		inst.x=battle_board.x-20;
	}
	inst.y=battle_board.y+lengthdir_y(120,_angle);
	inst.image_angle=_angle;
	inst.image_xscale=1.5;
	inst.image_yscale=1.5;
}

var inst=_inst[1];
if(instance_exists(inst)){
	inst.x=battle_board.x+60;
	inst.y=battle_board.y+lengthdir_y(120,_angle);
	inst.image_angle=-_angle;
	inst.image_xscale=1.5;
	inst.image_yscale=1.5;
}

//When there's no bullet, end the turn.
if(!instance_exists(_inst[0]) && !instance_exists(_inst[1])){
	Battle_EndTurn();
}