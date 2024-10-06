///@arg lv
function Player_GetLvDef(LV) {
	var result=-1;

	result=10+ceil((LV-4)/4);

	return result;


}
