var length_start=600;
var length_end=200;
var x_start=battle_board.x+lengthdir_x(length_start,_dir);
var y_start=battle_board.y+lengthdir_y(length_start,_dir);
var x_target=battle_board.x+lengthdir_x(length_end,_dir);
var y_target=battle_board.y+lengthdir_y(length_end,_dir);
var angle=point_direction(x_start,y_start,x_target,y_target);

var inst=instance_create_depth(x_start,y_start,0,battle_bullet_gb);
inst.x_target=x_target;
inst.y_target=y_target;
inst.angle_start=angle;
inst.angle_target=angle;
inst.scale_y=1.5;
_dir-=10;

alarm[0]=4;