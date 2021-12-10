///@arg atk
function Player_SetAtk() {
	var ATK=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ATK,ATK);

	return result;


}
