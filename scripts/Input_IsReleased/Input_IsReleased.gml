///@arg input
function Input_IsReleased() {
	var INPUT=argument[0];

	var state=Input_GetState(INPUT);
	return (state==INPUT_STATE.RELEASED);


}
