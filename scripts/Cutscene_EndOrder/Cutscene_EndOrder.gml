// This script ends the current order and goes to the next one
function Cutscene_EndOrder() {
	with (cutscene) {
		if (_current_order < array_length(global._gmu_cutscene_order) - 1) {
			_current_order++;
			_sleep_timer = 0;
			_got_once = false;
		}
		else Cutscene_End();
	}
}
