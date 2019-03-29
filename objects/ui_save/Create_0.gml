depth=DEPTH_UI.PANEL;

_state=-1;
_choice=0;

_prefix="{shadow false}{scale 2}{font 1}{instant true}{gui true}{depth "+string(DEPTH_UI.TEXT)+"}";

_inst_name=noone;
_inst_lv=noone;
_inst_time=noone;
_inst_room=noone;
_inst_save=noone;
_inst_return=noone;

if(instance_exists(char_player)){
	char_player._moveable_save=false;
}