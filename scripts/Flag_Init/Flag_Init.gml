function Flag_Init() {
	global._flag=ds_map_create();
	global._flag_processors=ds_map_create();
	
	Flag_CustomProcessor();
	Flag_Custom();


}
