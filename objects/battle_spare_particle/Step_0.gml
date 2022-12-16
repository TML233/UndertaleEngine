if(image_alpha>0){
	image_alpha-=0.04;
}
else{
	instance_destroy();
}

if(speed>0){
	speed-=0.2;
}