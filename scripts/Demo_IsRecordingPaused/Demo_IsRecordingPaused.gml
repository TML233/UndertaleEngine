function Demo_IsRecordingPaused() {
	if(Demo_IsRecording()){
		return demo_recorder._paused;
	}else{
		return false;
	}


}
