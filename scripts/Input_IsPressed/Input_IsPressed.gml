///@arg input
function Input_IsPressed(INPUT) {
	var state=Input_GetState(INPUT);
	return (state==INPUT_STATE.PRESSED);
}
