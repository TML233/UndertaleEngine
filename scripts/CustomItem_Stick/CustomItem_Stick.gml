// ItemTypeSimple base receives a name localization key.
// It automatically sets up GetName to show the localized name "item.key.name"
// and OnInfo to show the localized dialog "item.key.info"
function CustomItem_Stick() : ItemTypeSimple("stick") constructor{
	function OnUse(inventory,index){
		Dialog_Add(Lang_GetString("item.stick.use"));
		Dialog_Start();
	}
}