function BGM_Step() {
	var proc=0;
	repeat(6){
		var audio=BGM_GetID(proc);
		if(audio_exists(audio)){
			var start=global._bgm_loop_start[proc];
			var endt=global._bgm_loop_end[proc];
			if(start>=0 && endt>=0){
				var pos=audio_sound_get_track_position(audio);
				if(pos>=endt){
					audio_sound_set_track_position(audio,start+(pos-endt));
				}
			}
		}
		proc+=1;
	}
	return true;


}
