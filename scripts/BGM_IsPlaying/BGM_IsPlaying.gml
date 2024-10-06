///@arg bgm_slot
function BGM_IsPlaying(SLOT) {


	if(BGM_IsSlotValid(SLOT)){
		return audio_is_playing(BGM_GetID(SLOT));
	}else{
		return false;
	}


}
