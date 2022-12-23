if (_spin<4){
    char_player.dir=(char_player.dir+90)%360;
    _spin+=1;
    alarm[3]=_time/4;
}