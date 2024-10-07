function Player_GetBattleFightMenuObj(){
	var name=Storage_GetStaticGeneral().Get(FLAG_STATIC_BATTLE_MENU_FIGHT_OBJ,"");
	var asset=asset_get_index(name);
	if(GetObjectBase(asset)!=battle_menu_fight){
		return -1;
	}
	return asset;
}