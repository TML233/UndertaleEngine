///@arg phone_id
///@arg phone_event
///@arg phone_slot*
function Phone_CallEvent() {
	var PHONE=argument[0];
	var EVENT=argument[1];
	var SLOT=-1;
	if(argument_count>=3){
		SLOT=argument[2];
	}

	if(Phone_IsValid(PHONE)&&(Phone_IsSlotValid(SLOT)||SLOT==-1)){
		var INST=instance_create_depth(0,0,0,PHONE);
		INST._phone_slot=SLOT;
		with(INST){
			event_user(EVENT);
		}
		return true;
	}else{
		return false;
	}


}
