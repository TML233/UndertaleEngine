///@arg phone_id
function Phone_GetName() {
	var PHONE=argument[0];

	if(Phone_IsValid(PHONE)){
		var INST=Phone_GetPhone(PHONE)
		var NAME=INST._name;
		return NAME;
	}else{
		return "";
	}


}
