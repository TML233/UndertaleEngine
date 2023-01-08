///@desc Turn Start

//Start the attack!
event_inherited();
var board_x=battle_board.x, board_y=battle_board.y;
_inst[0]=instance_create_depth(board_x-60,board_y,0,battle_bullet_simple_inside);
_inst[1]=instance_create_depth(board_x+60,board_y,0,battle_bullet_simple_outside);