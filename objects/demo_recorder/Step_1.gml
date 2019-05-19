if(!_paused){
	buffer_write(_buffer,buffer_u8,fps);
	var proc=0;
	repeat(Demo_GetInputNumber()){
		buffer_write(_buffer,buffer_u8,Input_GetState(Demo_GetInput(proc)));
		proc+=1;
	}
	_frame_number+=1;
}