///@arg input
function Demo_AddInput(INPUT) {


	if(!Demo_IsRecording()){
		if(ds_list_find_index(global._demo_input_list,INPUT)<0){
			ds_list_add(global._demo_input_list,INPUT);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
