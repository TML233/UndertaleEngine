///@arg type
///@arg slot
///@arg default*
function Flag_Get() {
	var TYPE=argument[0];
	var SLOT=argument[1];
	var DEFAULT=0;
	if(argument_count>=3){
		DEFAULT=argument[2];
	}

	var map=global._flag;
	if(ds_map_exists(map,TYPE)){
		var map_f=ds_map_find_value(map,TYPE);
		if(ds_map_exists(map_f,SLOT)){
			var result=ds_map_find_value(map_f,SLOT);
			return result;
		}else{
			return DEFAULT;
		}
	}else{
		return DEFAULT;
	}


}
