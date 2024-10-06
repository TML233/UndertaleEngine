///@arg phone_slot
function Phone_Remove(SLOT) {
	if(Phone_IsSlotValid(SLOT)){
		if(Phone_IsValid(Phone_Get(SLOT))){
			Phone_Set(SLOT,-1);
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
