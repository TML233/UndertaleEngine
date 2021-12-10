function Demo_StartPlaying() {
	if(!Demo_IsRecording()&&!Demo_IsPlaying()){
		instance_create_depth(0,0,0,demo_player);
		return true;
	}else{
		return false;
	}


}
