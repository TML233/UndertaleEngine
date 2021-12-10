function Demo_StartRecording() {
	if(!Demo_IsRecording()&&!Demo_IsPlaying()){
		instance_create_depth(0,0,0,demo_recorder);
		return true;
	}else{
		return false;
	}


}
