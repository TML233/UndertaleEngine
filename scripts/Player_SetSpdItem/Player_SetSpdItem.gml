///@arg spd_item
function Player_SetSpdItem() {
	var SPD=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.SPD_ITEM,SPD);

	return result;


}
