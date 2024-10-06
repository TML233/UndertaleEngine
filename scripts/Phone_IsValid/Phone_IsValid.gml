///@arg phone_id
function Phone_IsValid(PHONE) {

	if(object_exists(PHONE)){
		return (PHONE==phone || Object_GetBaseParent(PHONE)==phone);
	}else{
		return false;
	}


}
