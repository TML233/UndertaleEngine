///@arg bgm_slot
function BGM_GetAudio(SLOT) {
	if(BGM_IsSlotValid(SLOT)){
		return global._bgm_audio[SLOT];
	}else{
		return -1;
	}


}
