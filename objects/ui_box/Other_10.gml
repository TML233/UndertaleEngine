if(_state==0){
	_inst_inventory=instance_create_depth(16+6+82,16+6+8,0,text_typer);
	_inst_inventory.text=_prefix+Lang_GetString("ui.box.inventory");
	_inst_box=instance_create_depth(16+6+426,16+6+8,0,text_typer);
	_inst_box.text=_prefix+Lang_GetString("ui.box.box");
	_inst_finish=instance_create_depth(16+6+178,16+6+384,0,text_typer);
	_inst_finish.text=_prefix+Lang_GetString("ui.box.finish");
	
	event_user(1);
}