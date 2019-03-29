if(audio_exists(bgm)){
	if(!BGM_IsPlaying(bgm_slot)||(BGM_IsPlaying(bgm_slot)&&BGM_GetAudio(bgm_slot)!=bgm)){
		BGM_Play(bgm_slot,bgm);
		BGM_SetPitch(bgm_slot,pitch);
	}
}