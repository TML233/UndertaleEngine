if(instance_exists(_inst)){
	part_type_destroy(_p);
	part_system_destroy(_ps);
	surface_free(_surface);
	instance_destroy(_inst);
}