///@arg kills
function Player_SetKills() {
	var KILLS=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.KILLS,KILLS);

	return result;


}
