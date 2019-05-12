if(instance_exists(_inst_item_inventory)){
	instance_destroy(_inst_item_inventory);
}
if(instance_exists(_inst_item_box)){
	instance_destroy(_inst_item_box);
}

_inst_item_inventory=instance_create_depth(16+6+46,16+6+50,0,text_typer);
_inst_item_inventory.text=_prefix;
var proc=0;
repeat(8){
	_inst_item_inventory.text+=Item_GetName(Item_Get(proc));
	_inst_item_inventory.text+="&";
	proc+=1;
}

_inst_item_box=instance_create_depth(16+6+46+302,16+6+50,0,text_typer);
_inst_item_box.text=_prefix;
proc=0;
repeat(10){
	_inst_item_box.text+=Item_GetName(Box_Get(box_slot,proc));
	_inst_item_box.text+="&";
	proc+=1;
}