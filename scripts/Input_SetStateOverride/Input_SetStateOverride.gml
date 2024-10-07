///@arg input
///@arg state
function Input_SetStateOverride() {
	var INPUT=argument[0];
	var STATE=argument[1];

	global._gmu_input_state_override[?INPUT]=STATE;

	return true;


}
