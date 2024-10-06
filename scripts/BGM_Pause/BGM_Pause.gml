///@arg bgm_slot
function BGM_Pause(SLOT) {


	if(BGM_IsSlotValid(SLOT)){
		if(BGM_IsPlaying(SLOT)&&!BGM_IsPaused(SLOT)){
			audio_pause_sound(BGM_GetID(SLOT));
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
