function CustomItem_FadedRibbon() : ItemTypeSimple("faded_ribbon") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(_name));
		Dialog_Start();

		// Replace current item with current armor (de-eqiuip current armor),
		// and set current item as the new armor (equip current item as armor).
		inventory.Set(index,Player_GetArmorItem());
		Player_SetArmorItem(ITEM_FADED_RIBBON);

		Player_SetDefItem(3);

		audio_play_sound(snd_item_equip,0,false);

		inventory.Remove(index);
	}
}