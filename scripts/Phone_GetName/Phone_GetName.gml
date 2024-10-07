///@arg phone_id
function Phone_GetName() {
	var PHONE=argument[0];

	if(Phone_IsValid(PHONE)){
		var INST=instance_create_depth(0,0,0,PHONE);
		var NAME=INST._name;
		instance_destroy(INST);
		return NAME;
	}else{
		return "";
	}


}
