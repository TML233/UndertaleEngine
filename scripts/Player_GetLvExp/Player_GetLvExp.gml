///@arg lv
function Player_GetLvExp() {
	var LV=argument[0];

	var result=-1;

	switch(LV){
		case 2:
			result=10;
			break;
		case 3:
			result=40;
			break;
		case 4:
			result=110;
			break;
		case 5:
			result=230;
			break;
		case 6:
			result=430;
			break;
		case 7:
			result=530;
			break;
		case 8:
			result=1030;
			break;
		case 9:
			result=1830;
			break;
		case 10:
			result=3030;
			break;
		case 11:
			result=4730;
			break;
		case 12:
			result=7230;
			break;
		case 13:
			result=10730;
			break;
		case 14:
			result=15730;
			break;
		case 15:
			result=22730;
			break;
		case 16:
			result=32730;
			break;
		case 17:
			result=47730;
			break;
		case 18:
			result=72730;
			break;
		case 19:
			result=122730;
			break;
		case 20:
			result=222729;
			break;
	}

	return result;


}
