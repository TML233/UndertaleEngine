///@arg bgm_slot
///@arg audio
///@arg loop*
var SLOT=argument[0];
var AUDIO=argument[1];

if(BGM_IsSlotValid(SLOT)&&audio_exists(AUDIO)){
	BGM_Stop(SLOT);
	global._bgm_audio[SLOT]=AUDIO;
	global._bgm_id[SLOT]=audio_play_sound(AUDIO,1,true);
	return true;
}else{
	return false;
}