var key=ds_map_find_first(global._gmu_anim);
var key_previous=undefined;
while(!is_undefined(key)){
	var map=global._gmu_anim[?key];
	if((instance_exists(map[?ANIM_DATA.TARGET]) || map[?ANIM_DATA.TARGET]==global) && (map[?ANIM_DATA.TIME] <= map[?ANIM_DATA.DURATION])){
		map[?ANIM_DATA.TIME]+=1;
		var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]*Anim_GetValue(map[?ANIM_DATA.TWEEN],map[?ANIM_DATA.EASE],map[?ANIM_DATA.TIME]/map[?ANIM_DATA.DURATION],map[?ANIM_DATA.ARG_0],map[?ANIM_DATA.ARG_1]);
		if(map[?ANIM_DATA.TARGET]!=global){
			variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
		}else{
			variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
		}
	}else{
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
	key_previous=key;
	key=ds_map_find_next(global._gmu_anim,key);
}

return true;