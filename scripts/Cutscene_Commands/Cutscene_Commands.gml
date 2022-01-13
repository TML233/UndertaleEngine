function C_PlaySfx(soundid, pitch = 1, volume = 1, time = 0) {
	audio_play_sound(soundid, 0, false);
	audio_sound_pitch(soundid, pitch);
	audio_sound_gain(soundid, volume, time * 1000);
	Cutscene_EndOrder();
}

function C_ExecuteScript(name, arg0 = undefined, arg1 = undefined, arg2 = undefined, arg3 = undefined, arg4 = undefined, arg5 = undefined, arg6 = undefined, arg7 = undefined, arg8 = undefined, arg9 = undefined, arg10 = undefined, arg11 = undefined, arg12 = undefined, arg13 = undefined, arg14 = undefined) {
	script_execute(name, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14);
	Cutscene_EndOrder();
}

function C_CreateAnim(target, var_name, tween, ease, start, change, duration, relative = true, delay = 0, mode = ANIM_MODE.ONESHOT) {
	Anim_Create(target, var_name, tween, ease, start, change, duration, delay, 0, 0, mode, relative);
	Cutscene_EndOrder();
}

function C_FadeFader(start, target, time, delay = 0) {
	Fader_Fade(start, target, time, delay);
	Cutscene_EndOrder();
}

function C_Wait(frames) {
	with (cutscene) {
		if (_sleep_timer < frames)
			_sleep_timer++;
		else {
			Cutscene_EndOrder();
			_sleep_timer = 0;
		}
	}
}

function C_MoveChar(object, targetX, targetY, relative, movementSpeed) {
	var inst = instance_create_depth(0, 0, 0, char_mover);
	with (inst) {
		if (_x_dest == -1) && (_y_dest == -1) {
			_x_dest = (!relative ? targetX : object.x + targetX);
			_y_dest = (!relative ? targetY : object.y + targetY);
		}
		_moving_object = object;
	}
	Cutscene_EndOrder();
}

function C_CancelCharMovement(object) {
	for (var i = 0; i < instance_number(char_mover); i++) {
		var inst = instance_find(char_mover, i);
		if (inst._moving_object == object)
			instance_destroy(inst);
	}
	Cutscene_EndOrder();
}