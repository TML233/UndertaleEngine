/// @description Make things work
if (_callonce) {
	if (_text_no < _text_end) {
		_timer = 0;
		image_index++;
		_text_no++;
		
		instance_destroy(text_typer);
		Instantiate_Typer(60, 160, _text[_text_no], _prefix);
		
		if (alarm[0] < 0)
			alarm[0] = 1;
		
		_callonce = false;
	}
}

switch (_text_no) {
	case 11:
		_timer++;
		_draw[0] = true;
		
		if (_timer > room_speed * 2) {
			if (_draw_y[0] < sprite_get_width(spr_introlast) + 35) {
				_draw_y[0] += 1;
			}
		}
		break;
}

if (Input_IsPressed(INPUT.CONFIRM)) && (!_fading) && (_write) {
	_fading = true;
	Music_SetVolume(0, 0, room_speed / 2);
	instance_destroy(text_typer);
}

if (!instance_exists(text_typer)) && (_write) {
	if (!_fading) {
		if (_text_no < _text_end) {
			if (image_alpha != 0) {
				if (alarm[1] < 0)
					alarm[1] = 1;
			}
			else {
				_callonce = true;
			}
		}
	    else {
			if (image_alpha != 0) {
				if (alarm[1] < 0)
					alarm[1] = 1;
				
				Music_SetVolume(0, 0, room_speed / 2);
			}
			else {
				room_goto_next();
				Music_Stop(0);
			}
	    }
	}
}

if (_fading) {
	if (image_alpha != 0) {
		if (alarm[1] < 0)
			alarm[1] = 1;
	}
	else {
		room_goto_next();
		Music_Stop(0);
	}
}