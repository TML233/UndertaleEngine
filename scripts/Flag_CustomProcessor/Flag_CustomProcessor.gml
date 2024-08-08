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
	//Items
	for(var i=FLAG_STATIC.ITEM;i<=FLAG_STATIC.ITEM_END;i+=1)
		Flag_AssignProcessor(FLAG_TYPE.STATIC,i,funcObjectPreSave,funcObjectPostLoad);
	//Box
	for(var i=FLAG_STATIC.BOX;i<=FLAG_STATIC.BOX_END;i+=1)
		Flag_AssignProcessor(FLAG_TYPE.STATIC,i,funcObjectPreSave,funcObjectPostLoad);
	//Phone
	for(var i=FLAG_STATIC.PHONE;i<=FLAG_STATIC.PHONE_END;i+=1)
		Flag_AssignProcessor(FLAG_TYPE.STATIC,i,funcObjectPreSave,funcObjectPostLoad);
	//FightObj
	Flag_AssignProcessor(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,funcObjectPreSave,funcObjectPostLoad);
	//Weapon
	Flag_AssignProcessor(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_WEAPON,funcObjectPreSave,funcObjectPostLoad);
	//Armor
	Flag_AssignProcessor(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_ARMOR,funcObjectPreSave,funcObjectPostLoad);
	
}