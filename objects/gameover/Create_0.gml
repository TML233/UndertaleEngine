var z=Storage_GetTempGeneral();
x=z.Get(FLAG_TEMP_GAMEOVER_SOUL_X,320);
y=z.Get(FLAG_TEMP_GAMEOVER_SOUL_Y,240);
for(var i=0;i<6;i+=1){
	BGM_Stop(i);
}
audio_stop_all();

alarm[0]=40;