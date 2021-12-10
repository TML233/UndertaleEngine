function Demo_IsPlayingPaused() {
	if(Demo_IsPlaying()){
		return demo_player._paused;
	}else{
		return false;
	}


}
