if(Demo_IsPlaying()){
	instance_destroy(demo_player);
	return true;
}else{
	return false;
}