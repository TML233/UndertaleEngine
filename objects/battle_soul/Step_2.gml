if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)<=0){
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,x-camera.x);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,y-camera.y);
	room_goto(room_gameover);
}