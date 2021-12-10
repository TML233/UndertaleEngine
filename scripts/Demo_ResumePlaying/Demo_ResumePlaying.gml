function Demo_ResumePlaying() {
	if(Demo_IsPlaying()){
		if(Demo_IsPlayingPaused()){
			demo_player._paused=false;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
