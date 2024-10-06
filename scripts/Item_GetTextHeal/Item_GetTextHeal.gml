///@arg heal_hp
///@arg new_line*
function Item_GetTextHeal(HEAL,LINE=true) {
	var result="";
	result+=(LINE ? "&" : "");
	result+="{define `HP` "+string(HEAL)+"}";

	if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)>=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX)){
		result+=Lang_GetString("item.heal.all");
	}else{
		result+=Lang_GetString("item.heal.part");
	}

	return result;
}
