///@arg type
var TYPE=argument[0];

switch(TYPE){
	case FLAG_TYPE.STATIC:
		return ("./"+string(Flag_GetSaveSlot())+"/static");
	case FLAG_TYPE.DYNAMIC:
		return ("./"+string(Flag_GetSaveSlot())+"/dynamic");
	case FLAG_TYPE.INFO:
		return ("./"+string(Flag_GetSaveSlot())+"/info");
	case FLAG_TYPE.SETTINGS:
		return ("./settings");
	default:
		return ("");
}