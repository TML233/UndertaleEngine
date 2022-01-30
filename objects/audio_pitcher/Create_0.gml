/// @description Initialize

_bgm_slot=-1;
_current_pitch=audio_sound_get_pitch(BGM_GetAudio(_bgm_slot));
_target_pitch=1;

_duration=1;
_relative=false;
_tween=0;
_delay=0;
_ease=0;

alarm[0]=1;