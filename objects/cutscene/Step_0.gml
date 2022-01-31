if (_wait) {
	if (_sleep_timer != _wait_frames)
		_sleep_timer++;
	else {
		Cutscene_EndOrder();
		_sleep_timer = 0;
		_wait = false;
	}
}