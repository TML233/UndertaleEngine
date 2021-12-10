function Demo_PauseRecording() {
	if(Demo_IsRecording()){
		if(!Demo_IsRecordingPaused()){
			demo_recorder._paused=true;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
