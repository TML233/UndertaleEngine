///@arg lv
function Player_GetLvExp() {
	var LV=argument[0];

	var result=-1;

	switch(LV){
		case 2:
			result=10;
			break;
		case 3:
			result=30;
			break;
		case 4:
			result=70;
			break;
		case 5:
			result=120;
			break;
		case 6:
			result=200;
			break;
		case 7:
			result=300;
			break;
		case 8:
			result=500;
			break;
		case 9:
			result=800;
			break;
		case 10:
			result=1200;
			break;
		case 11:
			result=1700;
			break;
		case 12:
			result=2500;
			break;
		case 13:
			result=3500;
			break;
		case 14:
			result=5000;
			break;
		case 15:
			result=7000;
			break;
		case 16:
			result=10000;
			break;
		case 17:
			result=15000;
			break;
		case 18:
			result=25000;
			break;
		case 19:
			result=50000;
			break;
		case 20:
			result=99999;
			break;
	}

	return result;


}
