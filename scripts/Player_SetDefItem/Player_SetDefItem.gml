///@arg def_item
function Player_SetDefItem() {
	var DEF=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.DEF_ITEM,DEF);

	return result;


}
