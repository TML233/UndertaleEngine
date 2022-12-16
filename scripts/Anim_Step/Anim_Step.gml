function Anim_Step() {
	var proc=0;
	repeat(ds_list_size(global._gmu_anim_list)){
		var key=global._gmu_anim_list[|proc];
		var map=global._gmu_anim_data[?key];
		if (!map[?ANIM_DATA.PAUSED]) {
		if(instance_exists(map[?ANIM_DATA.TARGET]) || map[?ANIM_DATA.TARGET]==global){
			if(map[?ANIM_DATA.DELAY]<=0){
				if(map[?ANIM_DATA.TIME] < map[?ANIM_DATA.DURATION] && map[?ANIM_DATA.TIME] >= 0){
					map[?ANIM_DATA.TIME]+=1 * map[?ANIM_DATA.SPEED];
					var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]*Anim_GetValue(map[?ANIM_DATA.TWEEN],map[?ANIM_DATA.EASE],abs(map[?ANIM_DATA.TIME])/map[?ANIM_DATA.DURATION],map[?ANIM_DATA.ARG_0],map[?ANIM_DATA.ARG_1]);
					if(map[?ANIM_DATA.TARGET]!=global){
						variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
					}else{
						variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
					}
				}else{
					switch (map[?ANIM_DATA.MODE]) {
					    case ANIM_MODE.ONESHOT:
							var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE];
							if(map[?ANIM_DATA.TARGET]!=global){
								variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
							}else{
								variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
							}
							ds_map_destroy(map);
							ds_map_delete(global._gmu_anim_data,key);
							ds_list_delete(global._gmu_anim_list,proc);
							proc-=1;
					    break;
					
						case ANIM_MODE.REPEAT:
							map[?ANIM_DATA.TIME] = 0;
						break;
					
						case ANIM_MODE.PINGPONG:
							if (map[?ANIM_DATA.SPEED] > 0) map[?ANIM_DATA.TIME] = map[?ANIM_DATA.DURATION] - 1;
							else map[?ANIM_DATA.TIME] = 1;
							map[?ANIM_DATA.SPEED] *= -1;
						break;
					}
				
				
				
				}
			}else{
				map[?ANIM_DATA.DELAY]-=1;
			}
		}else{
			ds_map_destroy(map);
			ds_map_delete(global._gmu_anim_data,key);
			ds_list_delete(global._gmu_anim_list,proc);
			proc-=1;
		}}
		proc+=1;
	}

	return true;


}
