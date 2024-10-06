///@arg input
function Input_IsReleased(INPUT) {
	var state=Input_GetState(INPUT);
	return (state==INPUT_STATE.RELEASED);
}
