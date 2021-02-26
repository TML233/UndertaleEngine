///@arg bgm_slot
///@arg pitch
var SLOT=argument[0];
var PITCH=argument[1];

if(Music_IsSlotValid(SLOT)){
	if(Music_IsPlaying(SLOT)){
		audio_sound_pitch(Music_GetID(SLOT),PITCH);
		return true;
	}else{
		return false;
	}
}else{
	return false;
}