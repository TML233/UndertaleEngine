Storage_GetStatic().ClearData();
var sDynamic=Storage_GetDynamic();
sDynamic.ClearData();
sDynamic.LoadFromFile();
Player_CustomInitialData();
Player_SetName(_naming_name);

fader.color=c_black;
Fader_Fade(-1,0,20);
room_goto_next();