// This script ends the current order and goes to the next one
function Cutscene_EndOrder() {
	with (cutscene) {
		_current_order++;
		_sleep_timer = 0;
		_got_once = false;
	}
}
