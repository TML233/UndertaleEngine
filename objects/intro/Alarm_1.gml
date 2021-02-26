/// @description Decrease the image alpha
if (image_alpha > 0) {
	image_alpha -= 0.1;
	
	if (!_fading)
		alarm[1] = 1;
}
