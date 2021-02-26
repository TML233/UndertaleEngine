/// @description Increase the image alpha
if (image_alpha < 1) {
	image_alpha += 0.1;
	
	if (!_fading)
		alarm[0] = 1;
}