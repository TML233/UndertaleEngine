function Flag_AssignProcessor(type,slot,funcPreSave,funcPostLoad){
	var map=global._flag_processors;
	var map_f=-1;
	if(ds_map_exists(map,type)){
		map_f=ds_map_find_value(map,type);
	}else{
		map_f=ds_map_create();
		ds_map_add(map,type,map_f);
	}

	ds_map_replace(map_f,slot,{
		preSave: funcPreSave,
		postLoad: funcPostLoad
	});
}

function Flag_HasProcessorsFor(type){
	var map=global._flag_processors;
	return ds_map_exists(map,type);
}
function Flag_ApplyProcessor(type,targetMap,isPostLoad){
	var map=global._flag_processors;
	var map_f=-1;
	if(ds_map_exists(map,type)){
		map_f=ds_map_find_value(map,type);
	}else{
		return;
	}
	
	var slot=ds_map_find_first(map_f);
	while(!is_undefined(slot)){
		if(ds_map_exists(targetMap,slot)){
			var processors=ds_map_find_value(map_f,slot);
			var value=ds_map_find_value(targetMap,slot);
			var processor=isPostLoad ? processors.postLoad : processors.preSave;
			var processedValue=processor(value);
			ds_map_replace(targetMap,slot,processedValue);
		}
		slot=ds_map_find_next(map_f,slot);
	};
}