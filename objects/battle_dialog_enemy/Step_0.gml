if(fast&&Input_IsPressed(INPUT.CONFIRM)){
	instance_destroy();
}else if(instance_exists(_inst)){
	_inst.x=x-left+text_offset_x;
	_inst.y=y-up+text_offset_y;
}else{
	instance_destroy();
}