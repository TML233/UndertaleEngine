///@arg bgm_slot
///@arg volume
var SLOT=argument[0];
var VOLUME=argument[1];

if(BGM_IsSlotValid(SLOT)&&VOLUME>=0){
	if(BGM_IsPlaying(SLOT)){
		audio_sound_gain(BGM_GetID(SLOT),VOLUME,0);
		return true;
	}else{
		return false;
	}
}else{
	return false;
}