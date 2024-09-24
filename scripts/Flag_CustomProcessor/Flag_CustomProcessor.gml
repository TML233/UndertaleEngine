function Flag_CustomProcessor(){
	var funcObjectPreSave=function(value){
		if(!object_exists(value)) return "";
		return object_get_name(value);
	}
	var funcObjectPostLoad=function(value){
		if(string_length(value)==0) return -1;
		var objectId=asset_get_index(value);
		if(!object_exists(objectId)) return -1;
		return objectId;
	}
	//FightObj
	Flag_AssignProcessor(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,funcObjectPreSave,funcObjectPostLoad);
}