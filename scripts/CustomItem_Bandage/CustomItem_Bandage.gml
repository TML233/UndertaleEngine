function CustomItem_Bandage() : ItemTypeSimple("bandage") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("item.bandage.use.0")+Item_GetTextHeal(10));
		Dialog_Start();

		Player_Heal(10);
		audio_play_sound(snd_item_heal,0,false);

		inventory.Remove(index);
	}
}