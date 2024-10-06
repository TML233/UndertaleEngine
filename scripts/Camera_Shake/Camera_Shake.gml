///@arg shake_x
///@arg shake_y
///@arg shake_speed_x
///@arg shake_speed_y
///@arg shake_random_x
///@arg shake_random_y
///@arg shake_decrease_x
///@arg shake_decrease_y
function Camera_Shake(X,Y,SPEED_X=0,SPEED_Y=0,RANDOM_X=false,RANDOM_Y=false,DECREASE_X=1,DECREASE_Y=1) {
	camera.shake_x=X;
	camera.shake_y=Y;
	camera.shake_speed_x=SPEED_X;
	camera.shake_speed_y=SPEED_Y;
	camera.shake_random_x=RANDOM_X;
	camera.shake_random_y=RANDOM_Y;
	camera.shake_decrease_x=DECREASE_X;
	camera.shake_decrease_y=DECREASE_Y;
	camera._shake_pos_x=0;
	camera._shake_pos_y=0;
	camera._shake_time_x=0;
	camera._shake_time_y=0;
	camera._shake_positive_x=true;
	camera._shake_positive_y=true;
	return true;
}
