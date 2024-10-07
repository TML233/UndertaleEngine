event_inherited();

var items=Item_GetInventoryItems();
sprite_index=(items.GetCount()>0) ? Lang_GetSprite("battle.button.item",spr_default) : Lang_GetSprite("battle.button.item.empty",spr_default);