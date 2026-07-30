if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}

if (color == 1) {
    image_blend = make_color_rgb(0, 255, 255);
} else if (color == 2) {
    image_blend = make_color_rgb(255, 128, 0);
}