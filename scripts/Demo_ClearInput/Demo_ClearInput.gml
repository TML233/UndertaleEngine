function Demo_ClearInput() {
	if(!Demo_IsRecording()){
		ds_list_clear(global._demo_input_list);
		return true;
	}else{
		return false;
	}


}
