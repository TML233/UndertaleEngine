///@arg bgm_slot
///@arg pitch
function BGM_SetPitch(SLOT,PITCH) {


	if(BGM_IsSlotValid(SLOT)){
		if(BGM_IsPlaying(SLOT)){
			audio_sound_pitch(BGM_GetID(SLOT),PITCH);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
