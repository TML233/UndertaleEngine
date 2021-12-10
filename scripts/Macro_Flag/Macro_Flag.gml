function Macro_Flag() {
	enum FLAG_TYPE{
		STATIC,
		DYNAMIC,
		TEMP,
		INFO,
		SETTINGS,
		DEMO
	};

#region static
	enum FLAG_STATIC{
		NAME,
		LV,
		HP_MAX,
		HP,
		ATK,
		ATK_ITEM,
		DEF,
		DEF_ITEM,
		SPD,
		SPD_ITEM,
		INV,
		INV_ITEM,
		EXP,
		GOLD,
		ITEM,
		ITEM_END=FLAG_STATIC.ITEM+8-1,
		ITEM_WEAPON,
		ITEM_ARMOR,
		PHONE,
		PHONE_END=FLAG_STATIC.PHONE+8-1,
		BATTLE_MENU_FIGHT_OBJ,
		PLOT,
		MURDUR_LV,
		KILLS,
		ROOM,
		TIME,
		BOX,
		BOX_END=FLAG_STATIC.BOX+20-1
	};
#endregion

#region dynamic
	enum FLAG_DYNAMIC{
	};
#endregion

#region temp
	enum FLAG_TEMP{
		FUN,
		SAVE_SLOT,
		ENCOUNTER,
		BATTLE_ROOM_RETURN,
		GAMEOVER_SOUL_X,
		GAMEOVER_SOUL_Y,
		TRIGGER_WARP_LANDMARK,
		TRIGGER_WARP_DIR,
		TEXT_TYPER_CHOICE,
		FRAME_SKIP
	};
#endregion

#region info
	enum FLAG_INFO{
		NAME,
		LV,
		TIME,
		ROOM
	};
#endregion

#region settings
	enum FLAG_SETTINGS{
		LANGUAGE,
		GAMEPAD_CONFIRM,
		GAMEPAD_CANCEL,
		GAMEPAD_MENU
	};
#endregion

#region demo
	enum FLAG_DEMO{
		DATA
	};
#endregion


}
