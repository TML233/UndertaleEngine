///@arg target
///@arg var_name*
var inst=argument[0];
var var_name="";
if(argument_count>=2){
	var_name=argument[1];
}

var result=false;

if(instance_exists(inst)){
	if(inst.object_index==_gmu_anim){
		if(var_name==""||inst._var_name==var_name){
			instance_destroy(inst);
			result=true;
		}
	}else{
		var proc=0;
		var inst_find=noone;
		
		repeat(instance_number(_gmu_anim)){
			inst_find=instance_find(_gmu_anim,proc);
			if(instance_exists(inst_find)){
				if(inst_find._inst==inst||inst_find._inst.object_index=inst){
					if(var_name==""||inst_find._var_name==var_name){
						result=true;
						instance_destroy(inst_find);
						proc-=1;
					}
				}
			}
			proc+=1;
		}
	}
}else if(inst==global){
	var proc=0;
	var inst_find=noone;
	
	repeat(instance_number(_gmu_anim)){
		inst_find=instance_find(_gmu_anim,proc);
		if(instance_exists(inst_find)){
			if(inst_find._inst==global){
				if(var_name==""||inst_find._var_name==var_name){
					result=true;
					instance_destroy(inst_find);
					proc-=1;
				}
			}
		}
		proc+=1;
	}
}

return result;