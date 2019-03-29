///@arg target
///@arg var_name
///@arg tween
///@arg ease
///@arg start
///@arg change
///@arg duration
///@arg delay*
///@arg arg1*
///@arg arg2*
var inst=argument[0];
var var_name=argument[1];
var tween=argument[2];
var ease=argument[3];
var start=argument[4];
var change=argument[5];
var duration=argument[6];
var delay=0;
var arg1=0;
var arg2=0;

if(argument_count>=8){
	delay=argument[7];
}
if(argument_count>=9){
	arg1=argument[8];
}
if(argument_count>=10){
	arg2=argument[9];
}

var inst_result=noone;

if(duration>=0 && (((tween>=0 && tween<=ANIM_TWEEN.BOUNCE) && (ease>=ANIM_EASE.IN && ease<=ANIM_EASE.IN_OUT)) || tween==ANIM_TWEEN.LINEAR)){
	if(instance_exists(inst)){
		var proc=0;
		var proc_result=0;
		var inst_find=noone;
		
		repeat(instance_number(inst)){
			inst_find=instance_find(inst,proc);
			if(instance_exists(inst_find)){
				if(variable_instance_exists(inst_find,var_name)){
					inst_result[proc_result]=instance_create_depth(0,0,0,_gmu_anim);
					inst_result[proc_result]._inst=inst_find;
					inst_result[proc_result]._var_name=var_name;
					inst_result[proc_result]._tween=tween;
					inst_result[proc_result]._ease=ease;
					inst_result[proc_result]._start=start;
					inst_result[proc_result]._change=change;
					inst_result[proc_result]._duration=round(duration);
					inst_result[proc_result]._delay=round(delay);
					inst_result[proc_result]._arg1=arg1;
					inst_result[proc_result]._arg2=arg2;
					
					proc_result+=1;
				}
			}
			proc+=1;
		}
	}else if(inst==global){
		if(variable_global_exists(var_name)){
			inst_result=instance_create_depth(0,0,0,_gmu_anim);
			inst_result._inst=global;
			inst_result._var_name=var_name;
			inst_result._tween=tween;
			inst_result._ease=ease;
			inst_result._start=start;
			inst_result._change=change;
			inst_result._duration=round(duration);
			inst_result._delay=round(delay);
			inst_result._arg1=arg1;
			inst_result._arg2=arg2;
		}
	}
}
return inst_result;