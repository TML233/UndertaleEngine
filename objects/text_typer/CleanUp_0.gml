text="";

event_user(3);

if(instance_exists(_face)){
	instance_destroy(_face);
}

ds_list_destroy(_list_inst);
ds_list_destroy(_list_cmd);
ds_map_destroy(_map_macro);