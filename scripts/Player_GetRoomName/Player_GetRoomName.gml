///@arg room
function Player_GetRoomName(ROOM) {
	var name="";

	switch(ROOM){
		case -1:
			name="--";
			break;
	}
	return name;
}
