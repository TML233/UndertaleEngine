///@arg exp
function Player_SetExp() {
	var EXP=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.EXP,EXP);

	return result;


}
