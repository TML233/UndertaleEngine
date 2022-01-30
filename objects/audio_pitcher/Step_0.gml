/// @description Slowly change the pitch

if (_current_pitch != _target_pitch)
	BGM_SetPitch(_bgm_slot, _current_pitch);
else instance_destroy();