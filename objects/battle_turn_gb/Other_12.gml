///@desc Turn Start

var board_x=battle_board.x, board_y=battle_board.y;
repeat (360/20){
	cutscene_instance_create(cut,board_x-lengthdir_x(120,_dir),board_y-lengthdir_y(120,_dir),battle_bullet_gb);
	cutscene_wait(cut,10);
	_dir+=20;
}
alarm[0]=1;