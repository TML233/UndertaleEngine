var user=user_char;
var result=false;
if(instance_exists(char)){
	with(char){
		if(char_id==user||user==-1){
			result=place_meeting(x,y,other);
			if(result){
				break;
			}
		}
	}
}
if(!_triggered&&result){
	event_user(0);
	_collided_previous=true;
}else if(_triggered&&_collided_previous&&!result){
	event_user(1);
	_collided_previous=false;
}