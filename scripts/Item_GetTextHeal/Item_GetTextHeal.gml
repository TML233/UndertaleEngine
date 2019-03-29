///@arg heal_hp
///@arg new_line*
var HEAL=argument[0];
var LINE=true;
if(argument_count>=2){
	LINE=argument[1];
}

var result="";
result+=(LINE ? "&" : "");
result+="{define `HP` "+string(HEAL)+"}";

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)>=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX)){
	result+=Lang_GetString("item.heal.all");
}else{
	result+=Lang_GetString("item.heal.part");
}

return result;