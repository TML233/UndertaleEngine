///@desc Name Check
var text="";
var valid=true;
switch(string_lower(_naming_name)){
	default:
		text=Lang_GetString("menu.confirm.title");
		break;
	case "aaaaaa":
		text=Lang_GetString("menu.confirm.title.aaaaaa");
		break;
	case "alphys":
		text=Lang_GetString("menu.confirm.title.alphys");
		valid=false;
		break;
	case "alphy":
		text=Lang_GetString("menu.confirm.title.alphy");
		break;
	case "asgore":
		text=Lang_GetString("menu.confirm.title.asgore");
		valid=false;
		break;
	case "toriel":
		text=Lang_GetString("menu.confirm.title.toriel");
		valid=false;
		break;
	case "asriel":
		text=Lang_GetString("menu.confirm.title.asriel");
		valid=false;
		break;
	case "flowey":
		text=Lang_GetString("menu.confirm.title.flowey");
		valid=false;
		break;
	case "sans":
		text=Lang_GetString("menu.confirm.title.sans");
		valid=false;
		break;
	case "papyru":
		text=Lang_GetString("menu.confirm.title.papyru");
		break;
	case "undyne":
		text=Lang_GetString("menu.confirm.title.undyne");
		valid=false;
		break;
	case "mtt":
	case "metta":
	case "mett":
		text=Lang_GetString("menu.confirm.title.mtt");
		break;
	case "chara":
		text=Lang_GetString("menu.confirm.title.chara");
		break;
}

_confirm_title=text;
_confirm_valid=valid;