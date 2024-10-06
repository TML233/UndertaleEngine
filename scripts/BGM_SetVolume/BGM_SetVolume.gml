///@arg bgm_slot
///@arg volume
///@arg time*
function BGM_SetVolume(SLOT,VOLUME,TIME=0) {
	TIME=TIME*(1000/game_get_speed(gamespeed_fps));
	if(BGM_IsSlotValid(SLOT)&&VOLUME>=0){
		if(BGM_IsPlaying(SLOT)){
			if(TIME>0){
				audio_sound_gain(BGM_GetID(SLOT),VOLUME,TIME);
			}else{
				audio_sound_gain(BGM_GetID(SLOT),VOLUME,0);
			}
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
}
