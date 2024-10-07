///@arg input
function Input_Unbind() {
	var INPUT=argument[0];

	var map=global._gmu_input;
	if(ds_map_exists(map,INPUT)){
		var list=ds_map_find_value(map,INPUT);
		var proc=0;
		repeat(ds_list_size(list)){
			var map_bind=ds_list_find_value(list,proc);
			ds_map_destroy(map_bind);
			proc+=1;
		}
		ds_list_destroy(list);
		ds_map_delete(map,INPUT);
	
		return true;
	}else{
		return false;
	}


}
