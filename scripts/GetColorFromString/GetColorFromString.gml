///@arg string
function GetColorFromString() {
	var STR=argument[0];

	var color=c_white;
	switch(STR){
		case "white":
			color=c_white;
			break;
		case "black":
			color=c_black;
			break;
		case "red":
			color=c_red;
			break;
		case "yellow":
			color=c_yellow;
			break;
		case "gray":
			color=c_gray;
			break;
		case "gray_dark":
			color=c_dkgray;
			break;
		case "gray_light":
			color=c_ltgray;
			break;
	}
	return color;


}
