// This script ends the cutscene
function Cutscene_End() {
	global._gmu_cutscene = false; // Stop the cutscene
	global._gmu_cutscene_order = -1; // Reset the cutscene order
	
	// Reset the variables
	with (cutscene) {
		_current_order = 0;
		_sleep_timer = 0;
	}
}