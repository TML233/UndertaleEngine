///@arg type
///@arg slot
///@arg value
function Flag_Set() {
	var TYPE=argument[0];
	var SLOT=argument[1];
	var VALUE=argument[2];

	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,TYPE)){
		map_f=ds_map_find_value(map,TYPE);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,TYPE,map_f);
	}

	ds_map_replace(map_f,SLOT,VALUE);
	return true;


}
