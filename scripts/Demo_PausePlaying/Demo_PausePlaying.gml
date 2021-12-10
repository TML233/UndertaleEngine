function Demo_PausePlaying() {
	if(Demo_IsPlaying()){
		if(!Demo_IsPlayingPaused()){
			demo_player._paused=true;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
