///@arg phone_id
function Phone_IsValid() {
	var PHONE=argument[0];

	return variable_struct_exists(global._phones, PHONE);


}
