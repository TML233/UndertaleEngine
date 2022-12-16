///@arg target
///@arg var_name
///@arg paused
function Anim_SetPause() {
	var TARGET=argument[0];
	var VAR_NAME=argument[1];
	var PAUSED=argument[2];
	var result=false;

	if(TARGET<=-10){
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				map[?ANIM_DATA.PAUSED] = PAUSED;
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
						map[?ANIM_DATA.PAUSED] = PAUSED;
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
					map[?ANIM_DATA.PAUSED] = PAUSED;
				}
			}
			proc+=1;
		}
	}
	return result;


}
