_inst._type=type;

var LEN=8*scale_y;
var X=x+lengthdir_x(LEN,image_angle);
var Y=y+lengthdir_y(LEN,image_angle);
var YSCALE=scale_y*_beam_collision_scale;
var XSCALE=999*YSCALE;
_inst.x=X;
_inst.y=Y;
_inst.image_angle=image_angle;
if((_beam_scale>1.2)&&(_beam_alpha>0.8)){
	_inst.image_xscale=XSCALE;
	_inst.image_yscale=YSCALE;
}else{
	_inst.image_xscale=0;
	_inst.image_yscale=0;
}