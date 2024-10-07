function Player_SetBattleFightMenuObj(obj){
	if(GetObjectBase(obj)!=battle_menu_fight){
		return false;
	}
	var name=object_get_name(obj);
	Storage_GetStaticGeneral().Set(FLAG_STATIC_BATTLE_MENU_FIGHT_OBJ,name);
	return true;
}