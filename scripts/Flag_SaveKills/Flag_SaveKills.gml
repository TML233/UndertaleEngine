///@param area_no
var AREA_NO=argument[0];

if(AREA_NO!=-1){
	switch(AREA_NO){
		case 0:
			Flag_Set(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_0,global.kills[0]);
			break;
		case 1:
			Flag_Set(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_1,global.kills[1]);
			break;
		case 2:
			Flag_Set(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_2,global.kills[2]);
			break;
		case 3:
			Flag_Set(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_3,global.kills[3]);
			break;
		case 4:
			Flag_Set(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_4,global.kills[4]);
			break;
	}
	show_debug_message(global.kills[0]);
	Flag_Save(FLAG_TYPE.KILLS);
	return true;
}
else{
	return false;
}