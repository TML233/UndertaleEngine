///@arg target
///@arg var_name*
///@arg skip*
function Anim_Destroy() {
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
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
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
				ds_map_delete(global._gmu_anim_data,TARGET);
			}
		}
	}else if(instance_exists(TARGET)){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
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
						ds_map_delete(global._gmu_anim_data,key);
						ds_list_delete(global._gmu_anim_list,proc);
						proc-=1;
					}
				}
			}
			proc+=1;
		}
	}else if(TARGET==global){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(map[?ANIM_DATA.TARGET]==global){
				if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
					result=true;
					if(SKIP){
						if(instance_exists(map[?ANIM_DATA.TARGET])){
							if(variable_global_exists(map[?ANIM_DATA.VAR_NAME])){
								variable_global_set(map[?ANIM_DATA.VAR_NAME],map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]);
							}
						}
					}
					ds_map_destroy(map);
					ds_map_delete(global._gmu_anim_data,key);
					ds_list_delete(global._gmu_anim_list,proc);
					proc-=1;
				}
			}
			proc+=1;
		}
	}
	return result;


}
