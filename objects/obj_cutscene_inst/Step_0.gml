if !suspend {
	_process_actions = true;

	while _process_actions {
		if array_length(actions) > 0 {
			if (variable_struct_exists(actions[0], "init") && !_action_init) {
				_action_init = true;
				actions[0].init(self);
			}
		
			if !actions[0].update(self) {
				while array_length(actions_new) > 0 {
				    array_insert(actions, 1, array_pop(actions_new));
				}
				array_delete(actions, 0, 1);
				_action_init = false;
			} else {
				_process_actions = false;	
			}
		
		} else {
			_process_actions = false;
			instance_destroy();
		}
	}
}