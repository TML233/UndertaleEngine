///@arg shake_x
///@arg shake_y
///@arg shake_speed_x*
///@arg shake_speed_y*
///@arg shake_random_x*
///@arg shake_random_y*
///@arg shake_decrease_x*
///@arg shake_decrease_y*
function Camera_Shake() {

	var X=argument[0];
	var Y=argument[1];
	var SPEED_X=0;
	var SPEED_Y=0;
	var RANDOM_X=false;
	var RANDOM_Y=false;
	var DECREASE_X=1;
	var DECREASE_Y=1;
	if(argument_count>=3){
		SPEED_X=argument[2];
	}
	if(argument_count>=4){
		SPEED_Y=argument[3];
	}
	if(argument_count>=5){
		RANDOM_X=argument[4];
	}
	if(argument_count>=6){
		RANDOM_Y=argument[5];
	}
	if(argument_count>=7){
		DECREASE_X=argument[6];
	}
	if(argument_count>=8){
		DECREASE_Y=argument[7];
	}

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
