///@arg gold
function Player_SetGold() {
	var GOLD=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD,GOLD);

	return result;


}
