///@arg type
function Flag_Clear() {
	var TYPE=argument[0];

	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,TYPE)){
		map_f=ds_map_find_value(map,TYPE);
		ds_map_clear(map_f);
		return true;
	}else{
		return false;
	}


}
