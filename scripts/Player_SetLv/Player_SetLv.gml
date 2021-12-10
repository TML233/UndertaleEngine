///@arg lv
function Player_SetLv() {
	var LV=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.LV,LV);

	return result;


}
