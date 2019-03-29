Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,target_landmark);
if(instance_exists(char_player)){
	var pdir=DIR.DOWN;
	if(player_dir==-1){
		pdir=char_player.dir;
	}else{
		pdir=player_dir;
	}
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,pdir);
}
if(bgm_fade){
	BGM_Stop(0);
}
room_goto(target_room);
fader.color=fade_out_color;
Fader_Fade(-1,0,fade_out_time);