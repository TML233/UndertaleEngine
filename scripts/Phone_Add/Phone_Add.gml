///@arg phone_id
function Phone_Add() {
	var PHONE=argument[0];

	if(Phone_GetNumber()<8){
		Phone_Set(Phone_GetNumber(),PHONE);
		return true;
	}else{
		return false;
	}


}
