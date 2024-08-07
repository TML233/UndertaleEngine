if (_interact == true && instance_exists(text_typer)) {
	if (Flag_Get(FLAG_TYPE.TEMP, FLAG_TEMP.TEXT_TYPER_CHOICE, noone) != noone) {
		_interact = false;
		instance_destroy(text_typer);
		if (Flag_Get(FLAG_TYPE.TEMP, FLAG_TEMP.TEXT_TYPER_CHOICE) == 0) {
			instance_create_depth(0, 0, 0, ui_box);
		} else {
			char_player.moveable = true;
		}
		Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.TEXT_TYPER_CHOICE, noone);
	}
}

event_inherited();