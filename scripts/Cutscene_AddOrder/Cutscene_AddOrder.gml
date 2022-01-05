// This script sets things up for the X order
function Cutscene_AddOrder(script_to_execute, arguments){
	var order_length = array_length(global._gmu_cutscene_order);
	global._gmu_cutscene_order[order_length][0] = script_to_execute; // Set the script in the X order
	for (var n = 0; n < array_length(arguments); n++)
		global._gmu_cutscene_order[order_length][n + 1] = arguments[n]; // Spread the arguments near the script of the X order
}