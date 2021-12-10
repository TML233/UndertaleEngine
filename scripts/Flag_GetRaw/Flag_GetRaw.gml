///@arg type
function Flag_GetRaw() {
	var TYPE=argument[0];

	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,TYPE)){
		map_f=ds_map_find_value(map,TYPE);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,TYPE,map_f);
	}

	var str=ds_map_write(map_f);

	return str;


}
