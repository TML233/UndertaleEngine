///@arg input
///@arg type
///@arg device
///@arg button
function Input_Bind() {

	var INPUT=argument[0];
	var TYPE=argument[1];
	var DEVICE=argument[2];
	var BUTTON=argument[3];

	if(TYPE>=INPUT_TYPE.KEYBOARD&&TYPE<=INPUT_TYPE.MOUSE){
		var map=global._gmu_input;
		var list=-1;
		var map_bind=-1;
		if(!ds_map_exists(map,INPUT)){
			list=ds_list_create();
			ds_map_add(map,INPUT,list);
		}else{
			list=ds_map_find_value(map,INPUT);
		}
		map_bind=ds_map_create();
		ds_map_add(map_bind,"type",TYPE);
		ds_map_add(map_bind,"device",DEVICE);
		ds_map_add(map_bind,"button",BUTTON);
	
		ds_list_add(list,map_bind);
	
		return true;
	}else{
		return false;
	}


}
