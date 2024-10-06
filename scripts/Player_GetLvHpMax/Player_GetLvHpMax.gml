///@arg lv
function Player_GetLvHpMax(LV) {
	var result=-1;
	if(LV>=20){
		result=99;
	}else{
		result=20+(LV-1)*4;
	}

	return result;
}
