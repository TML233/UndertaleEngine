///@arg target
///@arg var_name
function Anim_GetSpeed() {
	var TARGET=argument[0];
	var VAR_NAME=argument[1];

	if(TARGET<=-10){
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
			if(map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				return map[?ANIM_DATA.SPEED];
			}
		}
	}else if(instance_exists(TARGET)){
		var proc=0;
		repeat(ds_list_size(global._gmu_anim_list)){
			var key=global._gmu_anim_list[|proc];
			var map=global._gmu_anim_data[?key];
			if(instance_exists(map[?ANIM_DATA.TARGET])){
				if(map[?ANIM_DATA.TARGET]==TARGET||(map[?ANIM_DATA.TARGET]).object_index=TARGET){
					if(map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
						return map[?ANIM_DATA.SPEED];
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
				if(map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
					return map[?ANIM_DATA.SPEED]
				}
			}
			proc+=1;
		}
	}
	return false;


}
