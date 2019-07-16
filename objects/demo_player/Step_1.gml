if(_frame_current<_frame_number){
	if(!_paused){
		_fps=buffer_read(_buffer,buffer_u8);
		var proc=0;
		repeat(_input_number){
			var input=_input_list[|proc];
			var state=buffer_read(_buffer,buffer_u8);
			Input_SetStateOverride(input,state);
			proc+=1;
		}
		_frame_current+=1;
	}
}