if (image_alpha>0)
	image_alpha-=0.08;
else
	instance_destroy();

x+=_horizontal_speed;
y-=_acceleration;

_acceleration+=_base_acceleration;
alarm[1]=_freeze;
