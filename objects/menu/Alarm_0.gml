Flag_Clear(FLAG_TYPE.STATIC);
Flag_Clear(FLAG_TYPE.DYNAMIC);
Flag_Custom();
Music_Stop(0);
Player_SetName(_naming_name);
fader.color=c_black;
Fader_Fade(-1,0,10);
room_goto_next();