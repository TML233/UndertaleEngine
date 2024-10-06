///@arg number
function Battle_SetMenuChoiceMercyOverrideNumber(NUMBER) {
	if(NUMBER>=1&&NUMBER<=3){
		battle._menu_choice_mercy_override_number=NUMBER;
		return true;
	}else{
		return false;
	}


}
