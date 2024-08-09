///@arg item_id,struct
function Item_Create(item_id, struct_i){
	var struct =
	{
		_item_slot : -1,
		_name : "Item",
		_name_short : "Item",
		_name_short_serious : "Item",
		_price_buy : 0,
		_price_sell : 0,
		_shop_description : "[SHOP& DESC& HERE]",
		_use : function(){},
		_info : function(){},
		_drop : function()
		{
			var rand=irandom(18);
			var sub=0;
			if(rand>3){
				sub=0;
			}else if(rand==0){
				sub=1;
			}else if(rand==1){
				sub=2;
			}else if(rand==2){
				sub=3;
			}else if(rand==3){
				sub=4;
			}
			Dialog_Add("{define `ITEM` `"+_name+"`}"+Lang_GetString("item.drop."+string(sub)));
			Dialog_Start();
			Item_Remove(_item_slot);
		}
	}
	for (var i = 0; i < variable_struct_names_count(struct_i); i += 1)
	{
		var name = variable_struct_get_names(struct_i)[i];
		variable_struct_set(struct,name,variable_struct_get(struct_i,name))
	}
	variable_struct_set(global._items, item_id, struct);
}