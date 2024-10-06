///@arg bgm_slot
function BGM_IsPaused(SLOT) {


	if(BGM_IsSlotValid(SLOT)){
		if(BGM_IsPlaying(SLOT)){
			return audio_is_paused(BGM_GetID(SLOT));
		}else{
			return false;
		}
	}else{
		return false;
	}


}
