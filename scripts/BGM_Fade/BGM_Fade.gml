///@arg bgm_slot
///@arg volume
///@arg TIME
var SLOT=argument[0];
var VOLUME=argument[1];
var TIME=argument[2]*(1000/game_get_speed(gamespeed_fps));

if(BGM_IsSlotValid(SLOT)&&VOLUME>=0&&TIME>=0){
	if(BGM_IsPlaying(SLOT)){
		audio_sound_gain(BGM_GetID(SLOT),VOLUME,TIME);
		return true;
	}else{
		return false;
	}
}else{
	return false;
}