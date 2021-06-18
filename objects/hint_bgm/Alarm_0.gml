if(!Music_IsPlaying(bgm_slot)||(Music_IsPlaying(bgm_slot)&&Music_GetAudio(bgm_slot)!=bgm)){
	Music_Play(bgm_slot,bgm);
	Music_SetPitch(bgm_slot,pitch);
}