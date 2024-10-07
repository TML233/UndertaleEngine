///@arg amount
function Game_SetFrameSkip() {
	var AMOUNT=argument[0];

	if(AMOUNT>=0){
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.FRAME_SKIP,AMOUNT);
		return true;
	}else{
		return false;
	}


}
