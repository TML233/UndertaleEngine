///@arg target
///@arg var_name
///@arg tween
///@arg ease
///@arg start
///@arg change
///@arg duration
///@arg delay*
///@arg arg_0*
///@arg arg_1*
function Anim_Create(TARGET,VAR_NAME,TWEEN,EASE,START,CHANGE,DURATION,DELAY=0,ARG_0=0,ARG_1=0) {
	var inst_result=-1;
	if(DURATION>=0){
		if(instance_exists(TARGET)){
			var proc=0;
			var proc_result=0;
			var inst_find=noone;
		
			repeat(instance_number(TARGET)){
				inst_find=instance_find(TARGET,proc);
				if(instance_exists(inst_find)){
					if(variable_instance_exists(inst_find,VAR_NAME)){
						var map=ds_map_create();
						ds_map_add(global._gmu_anim_data,global._gmu_anim_id,map);
						ds_list_add(global._gmu_anim_list,global._gmu_anim_id);
						inst_result[proc_result]=global._gmu_anim_id;
						global._gmu_anim_id-=1;
					
						map[?ANIM_DATA.TARGET]=inst_find;
						map[?ANIM_DATA.VAR_NAME]=VAR_NAME;
						map[?ANIM_DATA.TWEEN]=TWEEN;
						map[?ANIM_DATA.EASE]=EASE;
						map[?ANIM_DATA.START]=START;
						map[?ANIM_DATA.CHANGE]=CHANGE;
						map[?ANIM_DATA.DURATION]=DURATION;
						map[?ANIM_DATA.DELAY]=DELAY;
						map[?ANIM_DATA.ARG_0]=ARG_0;
						map[?ANIM_DATA.ARG_1]=ARG_1;
						map[?ANIM_DATA.TIME]=0;
					
						proc_result+=1;
					}
				}
				proc+=1;
			}
		}else if(TARGET==global){
			if(variable_global_exists(VAR_NAME)){
				var map=ds_map_create();
				ds_map_add(global._gmu_anim_data,global._gmu_anim_id,map);
				ds_list_add(global._gmu_anim_list,global._gmu_anim_id);
				inst_result[0]=global._gmu_anim_id;
				global._gmu_anim_id-=1;
			
				map[?ANIM_DATA.TARGET]=global;
				map[?ANIM_DATA.VAR_NAME]=VAR_NAME;
				map[?ANIM_DATA.TWEEN]=TWEEN;
				map[?ANIM_DATA.EASE]=EASE;
				map[?ANIM_DATA.START]=START;
				map[?ANIM_DATA.CHANGE]=CHANGE;
				map[?ANIM_DATA.DURATION]=DURATION;
				map[?ANIM_DATA.DELAY]=DELAY;
				map[?ANIM_DATA.ARG_0]=ARG_0;
				map[?ANIM_DATA.ARG_1]=ARG_1;
				map[?ANIM_DATA.TIME]=0;
			
				proc_result+=1;
			}
		}
	}
	return inst_result;


}
