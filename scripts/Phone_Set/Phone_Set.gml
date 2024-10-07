///@arg phone_slot
///@arg phone_id
function Phone_Set() {
	var SLOT=argument[0];
	var PHONE=argument[1];

	if(Phone_IsSlotValid(SLOT) && (Phone_IsValid(PHONE) || PHONE==-1)){
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+SLOT,PHONE);
		Phone_Update();
		return true;
	}else{
		return false;
	}


}
