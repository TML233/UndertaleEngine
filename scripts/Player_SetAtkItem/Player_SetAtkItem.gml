///@arg atk_item
function Player_SetAtkItem() {
	var ATK=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ATK_ITEM,ATK);

	return result;


}
