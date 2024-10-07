function Game_SetFrameSkip(amount) {
	if(amount<0){
		return false;
	}
	
	world._frame_skip=amount;
}
