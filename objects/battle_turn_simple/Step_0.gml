_angle+=2;

var inst=_inst[0];
if(instance_exists(inst)){
	_move += 1;
	inst.x=battle_board.x-60;
	//inst.y=battle_board.y+20;
	inst.y=battle_board.y+lengthdir_y(120,_angle);
	inst.image_angle=_angle;
	inst.image_xscale=1.5;
	inst.image_yscale=1.5;
	if _move = 50{
		//show_message("50");
		//run code to make it move differently
		//inst.y=battle_board.x+20;
	}
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