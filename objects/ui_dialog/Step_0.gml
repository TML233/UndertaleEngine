if(!instance_exists(_inst)){
	if(!Dialog_IsEmpty()){
		_inst=instance_create_depth(60,(_top ? 30 : 340),0,text_typer);
		_inst._char_frame_remain=1;
		_inst.text="{scale 2}{voice 0}{speed 0}{space_y 2}{shadow false}{gui true}{depth "+string(DEPTH_UI.TEXT)+"}";
		_inst.text+=Dialog_Get();
		_inst.text+="{pause}{end}";
	}else{
		instance_destroy();
	}
}