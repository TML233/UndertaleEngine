function C_Execute(order_to_check, script_to_execute, args = []) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		switch (array_length(args)) {
			case 0: script_execute(script_to_execute); break;
			case 1: script_execute(script_to_execute, args[0]); break;
			case 2: script_execute(script_to_execute, args[0], args[1]); break;
			case 3: script_execute(script_to_execute, args[0], args[1], args[2]); break;
			case 4: script_execute(script_to_execute, args[0], args[1], args[2], args[3]); break;
			case 5: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4]); break;
			case 6: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5]); break;
			case 7: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6]); break;
			case 8: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]); break;
			case 9: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]); break;
			case 10: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]); break;
			case 11: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10]); break;
			case 12: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11]); break;
			case 13: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12]); break;
			case 14: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13]); break;
			case 15: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14]); break;
			case 16: script_execute(script_to_execute, args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15]); break;
		}
	}
}

function C_PlaySfx(order_to_check, soundid, pitch = 1, volume = 1, time = 0) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		audio_play_sound(soundid, 0, false);
		audio_sound_pitch(soundid, pitch);
		audio_sound_gain(soundid, volume, time * 1000);
	}
}

function C_CreateAnim(order_to_check, target, var_name, tween, ease, start, change, duration, relative = true, delay = 0, mode = ANIM_MODE.ONESHOT) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		Anim_Create(target, var_name, tween, ease, start, change, duration, delay, 0, 0, mode, relative);
	}
}

function C_FadeFader(order_to_check, start, target, time, delay = 0) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		Fader_Fade(start, target, time, delay);
	}
}

function C_WaitUntilEvent(order_to_check, object, event) {
	if (cutscene._current_order == order_to_check) {
		with (object) {
			if (event_type == event) {
				with (cutscene) {
					_wait_frames = 0;
					_sleep_timer = 0;
				}
				show_debug_message("Working!");
			}
			else {
				with (cutscene) {
					_wait = true;
					_wait_frames = -1;
				}
			}
		}
	}
}

function C_WaitUntilVariable(order_to_check, object, variable, value_to_check) {
	if (cutscene._current_order == order_to_check) {
		if (variable_instance_get(object, variable) == value_to_check) {
			with (cutscene) {
				_wait_frames = 0;
				_sleep_timer = 0;
			}
			show_debug_message("Working!");
		}
		else {
			with (cutscene) {
				_wait = true;
				_wait_frames = -1;
			}
		}
	}
}

function C_WaitUntilDestroy(order_to_check, object) {
	if (cutscene._current_order == order_to_check) {
		if (!instance_exists(object)) {
			with (cutscene) {
				_wait_frames = 0;
				_sleep_timer = 0;
			}
		}
		else {
			with (cutscene) {
				_wait = true;
				_wait_frames = -1;
			}
		}
	}
}

function C_Wait(order_to_check, frames) {
	if (cutscene._current_order == order_to_check) {
		with (cutscene) {
			_wait = true;
			_wait_frames = frames;
		}
	}
}

function C_MoveChar(order_to_check, object, targetX, targetY, relative, movementSpeed) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		var inst = instance_create_depth(0, 0, 0, char_mover);
		with (inst) {
			if (_x_dest == -1) && (_y_dest == -1) {
				_x_dest = (!relative ? targetX : object.x + targetX);
				_y_dest = (!relative ? targetY : object.y + targetY);
			}
			_moving_object = object;
		}
	}
}

function C_CancelCharMovement(order_to_check, object) {
	if (cutscene._current_order == order_to_check && cutscene._wait = false) {
		for (var i = 0; i < instance_number(char_mover); i++) {
			var inst = instance_find(char_mover, i);
			if (inst._moving_object == object)
				instance_destroy(inst);
		}
	}
}