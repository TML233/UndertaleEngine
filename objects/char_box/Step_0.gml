if (_ready && !instance_exists(ui_dialog)) {
	_ready=false;
	if (Player_GetTextTyperChoice() == 0) {
		instance_create_depth(0, 0, 0, ui_box);
	}
}

event_inherited();