if(Encounter_IsExists(_encounter)&&instance_exists(char_player)){
	if(_exclam){
		var inst=instance_create_depth(0,0,0,exclamation);
		inst.x=char_player.x;
		inst.y=char_player.y-char_player.sprite_height;
		var time=30+irandom(10);
		inst.time=time;
		audio_play_sound(snd_exclamation,0,false);
		alarm[1]=time;
	}else{
		alarm[1]=1;
	}
}else{
	instance_destroy();
}