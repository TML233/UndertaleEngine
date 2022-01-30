/// @description Trigger

event_inherited();
if (!_collided_previous) {
	Cutscene_End(-1);
	_start_cutscene = true;
}