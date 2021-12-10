///@arg bgm_slot
///@arg audio
///@arg loop*
///@arg loop_start*
///@arg loop_end*
function BGM_Play() {
	var SLOT=argument[0];
	var AUDIO=argument[1];
	var LOOP=true;
	var LOOP_START=-1;
	var LOOP_END=-1;
	if(argument_count>=3){
		LOOP=argument[2];
	}
	if(argument_count>=4){
		LOOP_START=argument[3];
	}
	if(argument_count>=5){
		LOOP_END=argument[4];
	}
	if(BGM_IsSlotValid(SLOT)&&audio_exists(AUDIO)){
		BGM_Stop(SLOT);
		global._bgm_audio[SLOT]=AUDIO;
		global._bgm_id[SLOT]=audio_play_sound(AUDIO,1,LOOP);
		global._bgm_loop_start[SLOT]=LOOP_START;
		global._bgm_loop_end[SLOT]=LOOP_END;
		return true;
	}else{
		return false;
	}


}
