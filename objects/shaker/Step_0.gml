if(object_exists(target) && instance_exists(target)){
	var obj=target;
	target=instance_find(obj,0);
	var proc=1;
	repeat(instance_number(obj)-1){
		var inst_find=instance_find(obj,proc);
		if(instance_exists(inst_find)){
			var inst=instance_create_depth(0,0,0,shaker);
			inst.target=inst_find;
			inst.var_name=var_name;
			inst.shake_distance=shake_distance;
			inst.shake_speed=shake_speed;
			inst.shake_random=shake_random;
			inst.shake_decrease=shake_decrease;
		}
		proc+=1;
	}
}

if(instance_exists(target) && !object_exists(target) && variable_instance_exists(target,var_name) && shake_distance>0){
	if(!is_real(_shake_base)){
		_shake_base=variable_instance_get(target,var_name);
	}
	
	if(_shake_time>0){
		_shake_time-=1;
	}else{
		if(!shake_random){
			if(_shake_positive){
				_shake_pos=shake_distance;
			}else{
				shake_distance-=shake_decrease;
				_shake_pos=-shake_distance;
			}
			_shake_positive=!_shake_positive;
		}else{
			_shake_pos=random_range(-shake_distance,shake_distance);
			shake_distance-=shake_decrease;
		}
		_shake_time=shake_speed;
	}
	variable_instance_set(target,var_name,_shake_base+_shake_pos);
}else{
	instance_destroy();
}