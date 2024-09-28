function CustomItem_FadedRibbon() : ItemTypeSimple("faded_ribbon") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(GetName()));
		Dialog_Start();

		var curArmor=Player_GetItemArmor();
		inventory.Set(index,curArmor);
		Player_SetItemArmor(ITEM_FADED_RIBBON);

		Player_SetDefItem(3);

		audio_play_sound(snd_item_equip,0,false);
	}
}