///@param area_no
var AREA_NO=argument[0];

if(AREA_NO!=-1){
	Flag_Load(FLAG_TYPE.KILLS);
	switch(AREA_NO){
		case 0:
			global.kills[0]=Flag_Get(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_0,-1);
			break;
		case 1:
			global.kills[1]=Flag_Get(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_1,0);
			break;
		case 2:
			global.kills[2]=Flag_Get(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_2,0);
			break;
		case 3:
			global.kills[3]=Flag_Get(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_3,0);
			break;
		case 4:
			global.kills[4]=Flag_Get(FLAG_TYPE.KILLS,FLAG_KILLS.KILLS_AREA_4,0);
			break;
	}
	show_debug_message(global.kills[0]);
	return true;
}
else{
	return false;
}