///@arg target
///@arg var_name*
var TARGET=argument[0];
var VAR_NAME="";
if(argument_count>=2){
	VAR_NAME=argument[1];
}

var result=false;

if(TARGET<=-10){
	if(ds_map_exists(global._gmu_anim,TARGET)){
		var map=global._gmu_anim[?TARGET];
		if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
			result=true;
		}
	}
}else if(instance_exists(TARGET)){
	var key=ds_map_find_first(global._gmu_anim);
	while(!is_undefined(key)){
		var map=global._gmu_anim[?key];
		if(map[?ANIM_DATA.TARGET]==TARGET||(map[?ANIM_DATA.TARGET]).object_index=TARGET){
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				break;
			}
		}
		key=ds_map_find_next(global._gmu_anim,key);
	}
}else if(TARGET==global){
	var key=ds_map_find_first(global._gmu_anim);
	while(!is_undefined(key)){
		var map=global._gmu_anim[?key];
		if(map[?ANIM_DATA.TARGET]==global){
			if(VAR_NAME==""||map[?ANIM_DATA.VAR_NAME]==VAR_NAME){
				result=true;
				break;
			}
		}
		key=ds_map_find_next(global._gmu_anim,key);
	}
}

return result;