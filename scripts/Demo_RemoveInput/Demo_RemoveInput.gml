///@arg input
function Demo_RemoveInput() {
	var INPUT=argument[0];

	if(!Demo_IsRecording()){
		var pos=ds_list_find_index(global._demo_input_list,INPUT);
		if(pos>=0){
			ds_list_delete(global._demo_input_list,pos);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
