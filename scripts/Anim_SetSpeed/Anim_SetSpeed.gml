///@arg target
///@arg var_name
///@arg speed
///@arg fix_sign* Automatically handles negative speed (useful for ping-pong animations)
function Anim_SetSpeed() {
	var TARGET=argument[0];
	var VAR_NAME=argument[1];
	var SPEED=argument[2];
	var FIX_SIGN= argument_count > 3 ? argument[3] : true;
	var result=false;

	if(TARGET<=-10){
		if(ds_map_exists(global._gmu_anim_data,TARGET)){
			var map=global._gmu_anim_data[?TARGET];
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				map[?ANIM_DATA.SPEED] = SPEED * ((FIX_SIGN && map[?ANIM_DATA.SPEED] > 0) ? 1 : -1);
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
						map[?ANIM_DATA.SPEED] = SPEED * ((FIX_SIGN && map[?ANIM_DATA.SPEED] > 0) ? 1 : -1);
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
					map[?ANIM_DATA.SPEED] = SPEED * ((FIX_SIGN && map[?ANIM_DATA.SPEED] > 0) ? 1 : -1);
				}
			}
			proc+=1;
		}
	}
	return result;


}
