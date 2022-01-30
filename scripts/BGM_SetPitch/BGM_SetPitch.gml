///@arg bgm_slot
///@arg pitch
///@arg tween*
///@arg tween_duration*
///@arg tween_anim*
///@arg tween_relative*
///@arg tween_delay*
function BGM_SetPitch() {
	var SLOT=argument[0];
	var PITCH=argument[1];
	var DURATION=1;
	var RELATIVE=false;
	var TWEEN=false;
	var DELAY=0;
	var ANIM=ANIM_TWEEN.LINEAR;
	
	if(argument_count>2) TWEEN=argument[2];
	if(argument_count>3) DURATION=argument[3];
	if(argument_count>4) ANIM=argument[4];
	if(argument_count>5) RELATIVE=argument[5];
	if(argument_count>6) DELAY=argument[6];
	
	if(BGM_IsSlotValid(SLOT)){
		if(BGM_IsPlaying(SLOT)){
			if(!TWEEN)
				audio_sound_pitch(BGM_GetID(SLOT),PITCH);
			else {
				var INST=instance_create_depth(0,0,0,audio_pitcher);
				INST._bgm_slot=SLOT;
				INST._target_pitch=PITCH;
				INST._duration=DURATION;
				INST._relative=RELATIVE;
				INST._delay=DELAY;
				INST._tween=ANIM;
			}
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
