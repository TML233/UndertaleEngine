///@arg type
function Flag_GetSavePath() {
	var TYPE=argument[0];

	var result="./"+GAME_SAVE_NAME+"./flag/";
	switch(TYPE){
		case FLAG_TYPE.STATIC:
			result+=string(Flag_GetSaveSlot())+"/static";
			break;
		
		case FLAG_TYPE.DYNAMIC:
			result+=string(Flag_GetSaveSlot())+"/dynamic";
			break;
		case FLAG_TYPE.INFO:
			result+=string(Flag_GetSaveSlot())+"/info";
			break;
		case FLAG_TYPE.SETTINGS:
			result+="settings";
			break;
		case FLAG_TYPE.DEMO:
			result+="demo/"+string(Flag_GetSaveSlot());
			break;
		
		default:
			result="";
			break;
	}

	return result;


}
