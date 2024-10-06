///@arg info
///@arg default*
function Battle_GetTurnInfo(INFO,DEFAULT=0) {
	if(ds_map_exists(battle._turn_info,INFO)){
		return battle._turn_info[?INFO];
	}else{
		return DEFAULT;
	}
}
