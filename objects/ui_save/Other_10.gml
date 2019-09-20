if(_state==0){
	Flag_Clear(FLAG_TYPE.INFO);
	Flag_Load(FLAG_TYPE.INFO);
	
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
	
	_inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
	var minute=time div 60;
	var second=time mod 60;
	_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	_inst_room.text=_prefix+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	_inst_save.text=_prefix+Lang_GetString("ui.save.save");
	
	_inst_return=instance_create_depth(108+6+236,118+6+116,0,text_typer);
	_inst_return.text=_prefix+Lang_GetString("ui.save.return");
}
if(_state==1){
	Player_Save(0);
	
	audio_play_sound(snd_save,0,false);
	
	if(instance_exists(_inst_name)){
		instance_destroy(_inst_name);
	}
	if(instance_exists(_inst_lv)){
		instance_destroy(_inst_lv);
	}
	if(instance_exists(_inst_time)){
		instance_destroy(_inst_time);
	}
	if(instance_exists(_inst_room)){
		instance_destroy(_inst_room);
	}
	if(instance_exists(_inst_save)){
		instance_destroy(_inst_save);
	}
	if(instance_exists(_inst_return)){
		instance_destroy(_inst_return);
	}
	
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	_inst_name.text=_prefix+"{color `yellow`}"+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+"{color `yellow`}"+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
	
	_inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
	var minute=time div 60;
	var second=time mod 60;
	_inst_time.text=_prefix+"{color `yellow`}"+string(minute)+":"+(second<10 ? "0" : "")+string(second);
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	_inst_room.text=_prefix+"{color `yellow`}"+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	_inst_save.text=_prefix+"{color `yellow`}"+Lang_GetString("ui.save.saved");
}