depth=DEPTH_UI.ENCOUNTER_ANIM;

_encounter=-1;
_exclam=true;
_quick=false;
_soul_x=48;
_soul_y=454;

_draw_soul=false;
_draw_soul_x=0;
_draw_soul_y=0;
_draw_player=false;
_draw_black=false;
_flash=0;

if(instance_exists(char_player)){
	char_player._moveable_encounter=false;
}

alarm[0]=1;