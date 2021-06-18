var room_return=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,-1);
if(room_exists(room_return)){
	room_goto(room_return);
	Fader_Fade(-1,0,room_speed/2);
	Music_Resume(0);
	Music_SetVolume(0,0);
	Music_SetVolume(0,1,50);
}