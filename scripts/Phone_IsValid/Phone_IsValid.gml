///@arg phone_id
function Phone_IsValid() {
	var PHONE=argument[0];

	if(object_exists(PHONE)){
		return (PHONE==phone || Object_GetBaseParent(PHONE)==phone);
	}else{
		return false;
	}


}
