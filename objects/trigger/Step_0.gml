if(!_triggered){
	var user=user_char;
	if(user>=-1){
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
		if(result){
			event_user(0);
		}
	}
}else if(multiple){
	var user=user_char;
	if(user>=-1){
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
		if(!result){
			_triggered=false;
		}
	}
}