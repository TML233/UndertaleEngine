/// Sets the solid four direction from the current real direction
function Char_ConvertDirection(object){
	if (object.direction >= 225 && object.direction < 315)
		return DIR.DOWN;
	if (object.direction >= 315 || object.direction < 45)
		return DIR.RIGHT;
	if (object.direction >= 45 && object.direction < 135)
		return DIR.UP;
	if (object.direction >= 135 && object.direction < 225)
		return DIR.LEFT;
}