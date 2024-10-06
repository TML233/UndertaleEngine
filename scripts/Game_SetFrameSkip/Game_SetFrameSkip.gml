///@arg amount
function Game_SetFrameSkip(AMOUNT) {
	if(AMOUNT>=0){
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.FRAME_SKIP,AMOUNT);
		return true;
	}else{
		return false;
	}
}