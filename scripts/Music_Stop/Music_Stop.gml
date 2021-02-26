///@arg bgm_slot
var SLOT=argument[0];

if(Music_IsSlotValid(SLOT)){
	if(Music_IsPlaying(SLOT)){
		audio_stop_sound(Music_GetID(SLOT));
		return true;
	}else{
		return false;
	}
}else{
	return false;
}