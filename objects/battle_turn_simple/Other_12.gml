///@desc Turn Start

//Start the attack!
event_inherited();
var board_x=battle_board.x, board_y=battle_board.y;

//Start the cutscene
_inst[0]=cutscene_instance_create(cut,board_x+60,board_y,battle_bullet_simple_inside);
_inst[1]=cutscene_instance_create(cut,board_x-60,board_y,battle_bullet_simple_outside);
show_debug_message(_inst[0]);
show_debug_message(_inst[1]);
cutscene_create_anim(cut,_inst[0],"y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_inst[0].y,120,60,0,-1,-1,ANIM_MODE.PINGPONG);
cutscene_create_anim(cut,_inst[1],"y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_inst[1].y,120,60,0,-1,-1,ANIM_MODE.PINGPONG);

cutscene_play(cut);