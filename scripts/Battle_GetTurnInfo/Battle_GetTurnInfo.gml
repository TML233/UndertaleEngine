///@arg info
///@arg default*
function Battle_GetTurnInfo() {
	var INFO=argument[0];
	var DEFAULT=0;
	if(argument_count>=2){
		DEFAULT=argument[1];
	}

	if(ds_map_exists(battle._turn_info,INFO)){
		return battle._turn_info[?INFO];
	}else{
		return DEFAULT;
	}


}
