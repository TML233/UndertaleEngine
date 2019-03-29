Flag_Clear(FLAG_TYPE.STATIC);
Flag_Clear(FLAG_TYPE.DYNAMIC);
Flag_Custom();
Player_SetName(_naming_name);
fader.color=c_black;
Fader_Fade(-1,0,20);
room_goto_next();