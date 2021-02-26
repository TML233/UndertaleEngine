///@arg bgm_slot
var SLOT=argument[0];

if(Music_IsSlotValid(SLOT)){
	if(Music_IsPlaying(SLOT)){
		return audio_is_paused(Music_GetID(SLOT));
	}else{
		return false;
	}
}else{
	return false;
}