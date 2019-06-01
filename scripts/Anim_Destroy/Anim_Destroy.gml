///@arg target
///@arg var_name*
///@arg skip*
var TARGET=argument[0];
var VAR_NAME="";
var SKIP=false;
if(argument_count>=2){
	VAR_NAME=argument[1];
}
if(argument_count>=3){
	SKIP=argument[2];
}

var result=false;

if(TARGET<=-10){
	if(ds_map_exists(global._gmu_anim,TARGET)){
		var map=global._gmu_anim[?TARGET];
		if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
			result=true;
			if(SKIP){
				if(instance_exists(map[?ANIM_DATA.TARGET])){
					if(variable_instance_exists(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME])){
						variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
					}
				}
			}
			ds_map_destroy(map);
			ds_map_delete(global._gmu_anim,TARGET);
		}
	}
}else if(instance_exists(TARGET)){
	var key=ds_map_find_first(global._gmu_anim);
	var key_previous=undefined;
	while(!is_undefined(key)){
		var map=global._gmu_anim[?key];
		if(instance_exists(map[?ANIM_DATA.TARGET])){
			if(map[?ANIM_DATA.TARGET]==TARGET||(map[?ANIM_DATA.TARGET]).object_index=TARGET){
				if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
					result=true;
					if(SKIP){
						if(instance_exists(map[?ANIM_DATA.TARGET])){
							if(variable_instance_exists(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME])){
								variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
							}
						}
					}
					ds_map_destroy(map);
					ds_map_delete(global._gmu_anim,key);
					if(ds_map_exists(global._gmu_anim,key_previous)){
						key=key_previous;
					}else{
						key_previous=undefined;
						key=ds_map_find_first(global._gmu_anim);
						continue;
					}
				}
			}
		}
		key_previous=key;
		key=ds_map_find_next(global._gmu_anim,key);
	}
}else if(TARGET==global){
	var key=ds_map_find_first(global._gmu_anim);
	var key_previous=undefined;
	while(!is_undefined(key)){
		var map=global._gmu_anim[?key];
		if(map[?ANIM_DATA.TARGET]==global){
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				if(SKIP){
					if(variable_global_exists(map[?ANIM_DATA.VAR_NAME])){
						variable_global_set(map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
					}
				}
				ds_map_destroy(map);
				ds_map_delete(global._gmu_anim,key);
				if(ds_map_exists(global._gmu_anim,key_previous)){
					key=key_previous;
				}else{
					key_previous=undefined;
					key=ds_map_find_first(global._gmu_anim);
					continue;
				}
			}
		}
		key_previous=key;
		key=ds_map_find_next(global._gmu_anim,key);
	}
}
return result;