///@arg item_name
var NAME=argument[0];

var result="";
result+="{define `ITEM` `"+NAME+"`}";
result+=Lang_GetString("item.equip");

return result;