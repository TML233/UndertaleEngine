if(angle%360!=0){
	var TARGET_X=_point_x;
	var TARGET_Y=_point_y;
	var CENTER_X=x;
	var CENTER_Y=y;
	var ANGLE=-_angle;
	
	var RESULT_X=(TARGET_X-CENTER_X)*dcos(ANGLE)-(TARGET_Y-CENTER_Y)*dsin(ANGLE)+x;
	var RESULT_Y=(TARGET_Y-CENTER_Y)*dcos(ANGLE)+(TARGET_X-CENTER_X)*dsin(ANGLE)+y;
	
	_point_x=RESULT_X;
	_point_y=RESULT_Y;
}