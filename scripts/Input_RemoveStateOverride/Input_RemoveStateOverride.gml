///@arg input
function Input_RemoveStateOverride() {
	var INPUT=argument[0];

	var map=global._gmu_input_state_override;
	if(ds_map_exists(map,INPUT)){
		ds_map_delete(map,INPUT);
		return true;
	}else{
		return false;
	}


}
