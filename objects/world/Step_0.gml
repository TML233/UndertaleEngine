Anim_Step();
BGM_Step();

if(_time>=60){
	var z=Storage_GetStaticGeneral();
	var time=z.Get(FLAG_STATIC_TIME,0);
	z.Set(FLAG_STATIC_TIME,time+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skipped>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skipped=0;
	}else{
		_frame_skipped+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

if(keyboard_check_pressed(vk_f2)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	var fs = !window_get_fullscreen();
	window_set_fullscreen(fs);
	Storage_GetSettings().Get("general").Set("fullscreen", fs);
	Storage_GetSettings().SaveToFile();
}

// Karma tick down logic
if (global.kr_enabled && global.kr > 0) {
    if (Player_GetHp() <= 1) {
        global.kr = 0;
    } else {
        global.kr_timer += 1;
        var tick_rate = 10;
        if (global.kr > 30) tick_rate = 1;
        else if (global.kr > 20) tick_rate = 2;
        else if (global.kr > 10) tick_rate = 5;
        
        if (global.kr_timer >= tick_rate) {
            global.kr_timer = 0;
            Player_SetHp(Player_GetHp() - 1);
            global.kr -= 1;
        }
    }
}