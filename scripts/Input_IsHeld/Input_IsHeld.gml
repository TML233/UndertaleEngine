///@arg input
function Input_IsHeld(INPUT) {
	var state=Input_GetState(INPUT);
	return (state==INPUT_STATE.HELD||state==INPUT_STATE.PRESSED);
}
