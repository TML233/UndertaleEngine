function Item_Custom(){
	// Check/Add variables template in Item_Create
	Item_Create
	(
		"item",
		{
		}
	);
	Item_Create
	(
		"item_tml",
		{
			_name : "TML",
			_info : function()
			{
				Dialog_Add("* TML - Useless&* The creator of this engine,&  as well as a lazy ass.{pause}{clear}* Better throw it on&  the ground.");
				Dialog_Start();
			}
		}
	);
	Item_Create
	(
		"item_bandage",
		{
			_name : Lang_GetString("item.bandage.name"),
			_name_short : Lang_GetString("item.bandage.name"),
			_name_short_serious : Lang_GetString("item.bandage.name"),
			_use : function()
			{
				Dialog_Add(Lang_GetString("item.bandage.use.0")+Item_GetTextHeal(10));
				Dialog_Start();
				Player_Heal(10);
				Item_Remove(_item_slot);
				audio_play_sound(snd_item_heal,0,false);
			},
			_info : function()
			{
				Dialog_Add(Lang_GetString("item.bandage.info"));
				Dialog_Start();
			}
		}
	);
	Item_Create
	(
		"item_stick",
		{
			_name : Lang_GetString("item.stick.name"),
			_name_short : Lang_GetString("item.stick.name"),
			_name_short_serious : Lang_GetString("item.stick.name"),
			_use : function()
			{
				Dialog_Add(Lang_GetString("item.stick.use"));
				Dialog_Start();
			},
			_info : function()
			{
				Dialog_Add(Lang_GetString("item.stick.info"));
				Dialog_Start();
			}
		}
	);
	Item_Create
	(
		"item_faded_ribbon",
		{
			_name : Lang_GetString("item.faded_ribbon.name"),
			_name_short : Lang_GetString("item.faded_ribbon.name.short"),
			_name_short_serious : Lang_GetString("item.faded_ribbon.name.short"),
			_use : function()
			{
				Dialog_Add(Item_GetTextEquip(_name));
				Dialog_Start();
				//Item_Remove(_item_slot);
				Item_Set(_item_slot,Item_GetArmor());
				Item_SetWeapon(Item_GetItem("item_faded_ribbon"));
				Player_SetDefItem(3);
				audio_play_sound(snd_item_equip,0,false);
			},
			_info : function()
			{
				Dialog_Add(Lang_GetString("item.faded_ribbon.info"));
				Dialog_Start();
			}
		}
	);
	Item_Create
	(
		"item_toy_knife",
		{
			_name : Lang_GetString("item.toy_knife.name"),
			_name_short : Lang_GetString("item.toy_knife.name"),
			_name_short_serious : Lang_GetString("item.toy_knife.name"),
			_use : function()
			{
				Dialog_Add(Item_GetTextEquip(_name));
				Dialog_Start();
				//Item_Remove(_item_slot);
				Item_Set(_item_slot,Item_GetWeapon());
				Item_SetWeapon(Item_GetItem("item_toy_knife"));
				Player_SetAtkItem(3);
				audio_play_sound(snd_item_equip,0,false);
			},
			_info : function()
			{
				Dialog_Add(Lang_GetString("item.toy_knife.info"));
				Dialog_Start();
			}
		}
	);
}