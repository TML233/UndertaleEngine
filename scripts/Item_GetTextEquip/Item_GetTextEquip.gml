///@arg item_name
function Item_GetTextEquip() {
	var NAME=argument[0];

	var result="";
	result+="{define `ITEM` `"+NAME+"`}";
	result+=Lang_GetString("item.equip");

	return result;


}
