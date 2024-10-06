///@arg input
///@arg state
function Input_SetStateOverride(INPUT,STATE) {
	global._gmu_input_state_override[?INPUT]=STATE;

	return true;
}
