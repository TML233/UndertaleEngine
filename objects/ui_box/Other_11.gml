if(instance_exists(_inst_item_inventory)){
	instance_destroy(_inst_item_inventory);
}
if(instance_exists(_inst_item_box)){
	instance_destroy(_inst_item_box);
}

{
	_inst_item_inventory=instance_create_depth(16+6+46,16+6+50,0,text_typer);
	_inst_item_inventory.text=_prefix;
	var items=Item_GetInventoryItems();
	var proc=0;
	repeat(items.GetCount()){
		_inst_item_inventory.text+=items.GetItemName(proc);
		_inst_item_inventory.text+="&";
		proc+=1;
	}
}

{
	_inst_item_box=instance_create_depth(16+6+46+302,16+6+50,0,text_typer);
	_inst_item_box.text=_prefix;
	var box=Item_GetInventoryBoxes(box_slot);
	var proc=0;
	repeat(box.GetCount()){
		_inst_item_box.text+=box.GetItemName(proc);
		_inst_item_box.text+="&";
		proc+=1;
	}
}