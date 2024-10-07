///@arg choice_mercy_slot
///@arg name
function Battle_SetMenuChoiceMercyOverrideName() {
	var SLOT=argument[0];
	var NAME=argument[1];

	if(SLOT>=0&&SLOT<=2){
		battle._menu_choice_mercy_override_name[SLOT]=NAME;
		return true;
	}else{
		return false;
	}


}
