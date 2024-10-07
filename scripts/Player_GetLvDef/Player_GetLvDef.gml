///@arg lv
function Player_GetLvDef() {
	var LV=argument[0];

	var result=-1;

	result=10+ceil((LV-4)/4);

	return result;


}
