///@arg choice_mercy_slot
function Battle_GetMenuChoiceMercyOverrideName(SLOT) {
	if(SLOT>=0&&SLOT<=2){
		return battle._menu_choice_mercy_override_name[SLOT];
	}else{
		return "";
	}


}
