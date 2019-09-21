Anim_Step();
BGM_Step();

if(_time>=60){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.TIME,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

if(keyboard_check_pressed(vk_f2)){
	game_restart();
}

if(keyboard_check_pressed(192)){
	Console_SetVisible(!Console_IsVisible());
}

Console_SetStatusText(0,"FPS: "+string(fps));
Console_SetStatusText(1,"Room: "+string(room)+"("+room_get_name(room)+")");
Console_SetStatusText(2,"InstC: "+string(instance_count));

Console_Step();

if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	window_set_fullscreen(!window_get_fullscreen());
	//display_set_gui_maximize();
}