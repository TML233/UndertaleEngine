///@arg lv
function Player_GetLvAtk() {
	var LV=argument[0];

	var result=-1;

	result=10+(LV-1)*2;

	return result;


}
