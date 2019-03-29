visible=false;

repeat(6){
	instance_create_depth(x,y,0,gameover_shard);
}

audio_play_sound(snd_break_1,0,false);

alarm[2]=100;