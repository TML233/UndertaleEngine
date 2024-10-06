///@arg choice_mercy_slot
///@arg name
function Battle_SetMenuChoiceMercyOverrideName(SLOT,NAME) {
	if(SLOT>=0&&SLOT<=2){
		battle._menu_choice_mercy_override_name[SLOT]=NAME;
		return true;
	}else{
		return false;
	}


}
