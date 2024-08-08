function Flag_GetRaw(type) {
	var map=global._flag;
	var map_f=-1;
	if(ds_map_exists(map,type)){
		map_f=ds_map_find_value(map,type);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,type,map_f);
	}
	
	var useProcessor=Flag_HasProcessorsFor(type);
	var processedMap=-1;
	if(useProcessor){
		processedMap=ds_map_create();
		ds_map_copy(processedMap,map_f);
		Flag_ApplyProcessor(type,processedMap,false);
	}
	
	var str=ds_map_write(useProcessor ? processedMap : map_f);
	
	if(useProcessor){
		ds_map_destroy(processedMap);	
	}
	return str;


}
