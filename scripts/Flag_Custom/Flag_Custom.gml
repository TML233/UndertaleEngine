function Flag_Custom() {
	Player_SetName("PLAYER");
	Player_SetLv(1);
	Player_SetHpMax(20);
	Player_SetHp(20);
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,battle_menu_fight_knife);
	
	var items=Item_GetInventoryForItems();
	items.Clear();
	
	var phones=Item_GetInventoryForPhones();
	phones.Clear();
	phones.Add(ITEM_DICE);
	
	Player_SetWeaponItem(ITEM_EMPTY);
	Player_SetArmorItem(ITEM_EMPTY);

	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,-1);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,noone);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,-1);
}
