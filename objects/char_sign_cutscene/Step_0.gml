event_inherited();

if (_start_cutscene) {
	Cutscene_Begin();
	_cutscene_summary();
	
	if (!global._gmu_cutscene)
		_start_cutscene = false;
}