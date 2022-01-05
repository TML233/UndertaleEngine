// This script starts the cutscene
function Cutscene_Begin() {
	global._gmu_cutscene = true; // Start the cutscene
	show_message(global._gmu_cutscene_order);
}