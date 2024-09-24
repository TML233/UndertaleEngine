function CustomItem_ToyKnife() : ItemTypeSimple("toy_knife") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextEquip(_name));
		Dialog_Start();

		// Replace current item with current weapon (de-eqiuip current weapon),
		// and set current item as the new weapon (equip current item as weapon).
		inventory.Set(index,Player_GetWeaponItem());
		Player_SetWeaponItem(ITEM_TOY_KNIFE);

		Player_SetAtkItem(3);

		audio_play_sound(snd_item_equip,0,false);

		inventory.Remove(index);
	}
}