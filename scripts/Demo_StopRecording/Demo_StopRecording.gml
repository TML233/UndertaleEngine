function Demo_StopRecording() {
	if(Demo_IsRecording()){
		instance_destroy(demo_recorder);
		return true;
	}else{
		return false;
	}


}
