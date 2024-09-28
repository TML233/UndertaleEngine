if(Player_GetHp()<=0){
	var z=Storage_GetTempGeneral();
	z.Set(FLAG_TEMP_GAMEOVER_SOUL_X,x-camera.x);
	z.Set(FLAG_TEMP_GAMEOVER_SOUL_Y,y-camera.y);
	room_goto(room_gameover);
}