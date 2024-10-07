///@arg inv
function Player_SetInv() {
	var INV=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.INV,INV);

	return result;


}
