if (Input_IsPressed(INPUT.CONFIRM)) && (global.event != 2) {
	global.event = 2;
}

if (global.event == 0) {
	if (image_alpha > 0)
		image_alpha -= 0.1;
	else {
		_text_no++;
		
		if (_text_no == array_length(text) - 1)
			_last_frame = true;
		image_index++;
		instance_destroy(_inst_typer);
		
		writeText();
		global.event = 0.1;
	}
}

if (global.event == 0.1) {
	if (image_alpha < 1)
		image_alpha += 0.1;	
	else
		global.event = -9999;
}

if (global.event == 1) {
	Anim_Create(id, "_last_frame_y", 0, 0, _last_frame_y, 240, room_speed * 10);
	global.event = -9999;
}

if (global.event == 2) {
	if (image_alpha > 0) {
		image_alpha -= 0.025;
		BGM_SetVolume(0, 0, room_speed / 2);
		instance_destroy(_inst_typer);
	}
	else {
		room_goto(room_logo);
		BGM_Stop(0);
		global.event = -9999;
	}
}