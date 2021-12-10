///@arg bgm_slot
function BGM_GetAudio() {
	var SLOT=argument[0];

	if(BGM_IsSlotValid(SLOT)){
		return global._bgm_audio[SLOT];
	}else{
		return -1;
	}


}
