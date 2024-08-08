function Flag_SetRaw(type,raw) {
	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,type)){
		map_f=ds_map_find_value(map,type);
		ds_map_clear(map_f);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,type,map_f);
	}

	ds_map_read(map_f,raw);
	
	if(Flag_HasProcessorsFor(type)){
		Flag_ApplyProcessor(type,map_f,true);	
	}

	return true;


}
