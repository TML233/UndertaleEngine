// This script ends the cutscene
function Cutscene_End(order_to_check) {
	if (cutscene._current_order == order_to_check) || (order_to_check == -1) {
		global._gmu_cutscene = false; // Stop the cutscene
	
		// Reset the variables
		with (cutscene) {
			_current_order = 0;
			_sleep_timer = 0;
		}
	}
}