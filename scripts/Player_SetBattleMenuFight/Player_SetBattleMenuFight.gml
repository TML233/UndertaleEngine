///@arg obj
var OBJ=argument[0];

if(object_exists(OBJ)){
	if(Object_GetBaseParent(OBJ)==battle_menu_fight){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT,OBJ);
		return true;
	}
}
return false;