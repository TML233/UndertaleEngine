///@arg item_name
function Item_GetTextEquip(NAME) {
	var result="";
	result+="{define `ITEM` `"+NAME+"`}";
	result+=Lang_GetString("item.equip");

	return result;
}
