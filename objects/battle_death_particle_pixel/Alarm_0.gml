if(image_alpha>0) image_alpha-=0.04;
else instance_destroy();

randomize();
x+=_speed_horizontal;
y-=_speed_vertical;
_speed_vertical+=_speed_acceleration;
alarm[0]=1;