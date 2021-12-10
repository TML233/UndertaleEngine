///@arg inv_item
function Player_SetInvItem() {
	var INV=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.INV_ITEM,INV);

	return result;


}
