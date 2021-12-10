///@arg type
///@arg raw
function Flag_SetRaw() {
	var TYPE=argument[0];
	var RAW=argument[1];

	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,TYPE)){
		map_f=ds_map_find_value(map,TYPE);
		ds_map_clear(map_f);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,TYPE,map_f);
	}

	ds_map_read(map_f,RAW);

	return true;


}
