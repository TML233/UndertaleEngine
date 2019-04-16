///@arg type
var TYPE=argument[0];

var result="./"+GAME_NAME+"_"+game_id+"/";
switch(TYPE){
	case FLAG_TYPE.STATIC:
		result+=string(Flag_GetSaveSlot())+"/static";
	case FLAG_TYPE.DYNAMIC:
		result+=string(Flag_GetSaveSlot())+"/dynamic";
	case FLAG_TYPE.INFO:
		result+=string(Flag_GetSaveSlot())+"/info";
	case FLAG_TYPE.SETTINGS:
		result+="settings";
	default:
		result="";
}

return result;