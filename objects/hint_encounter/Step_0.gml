if(instance_exists(char_player)) {
	if(char_player.moving==true) {
		_steps++;
		if (_steps>_max_steps) {
			randomize();
			Encounter_Start(_encounter_id[random_range(0,_encounter_max)], true, true);
			_steps=0;
		}
	}
}