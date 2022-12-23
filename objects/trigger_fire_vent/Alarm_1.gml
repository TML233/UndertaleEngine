_steam=15;
_time=0.25*distance;
audio_play_sound(snd_vaporize,0,false);
if (dir == DIR.LEFT || dir == DIR.RIGHT) {
    var height = 0.25*distance;
    Anim_Create(char_player,"x",0,0,char_player.x,distance*(dir == DIR.RIGHT ? 1 : -1),_time);
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_player.y,-height,_time/2);
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_player.y-height,height,_time/2,_time/2);
}
if (dir == DIR.UP) {
    height=distance/50;
    var time=distance/50;
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_player.y,-distance-height,_time-time)
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_player.y-distance-height,height,time,_time-time)
}
if (dir == DIR.DOWN) {
    height=(distance/50)*2;
    time=(distance/50)*2;
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_player.y,-height,time)
    Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_player.y-height,distance+height,_time-time,time)
}
_spin=0;
alarm[2]=_time+1;
alarm[3]=1;