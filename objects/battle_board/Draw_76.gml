if(!surface_exists(_surface)){
	_surface=surface_create(640,480);
}

surface_set_target(_surface);{
	draw_clear_alpha(0,0);
}surface_reset_target();