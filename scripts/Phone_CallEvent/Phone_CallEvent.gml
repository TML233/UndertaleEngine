///@arg phone_id
///@arg phone_event
///@arg phone_slot*
function Phone_CallEvent(PHONE,EVENT,SLOT=-1) {
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
