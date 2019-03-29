if(Encounter_IsExists(_encounter)&&instance_exists(char_player)){
	if(_exclam){
		var inst=instance_create_depth(0,0,0,exclamation);
		inst.x=char_player.x+sprite_get_xoffset(spr_exclamation);
		inst.y=char_player.y-char_player.sprite_height-11+sprite_get_yoffset(spr_exclamation);
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