event_inherited();

image_xscale=1.5;
image_yscale=1.5;

_move_sine_dir=0;
_move_sine = function (len,spd=2) {
	y=ystart+lengthdir_y(len,_move_sine_dir);
	_move_sine_dir+=spd;
	image_angle+=spd;
}