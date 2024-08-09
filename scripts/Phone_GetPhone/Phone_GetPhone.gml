///@arg phone_id
function Phone_GetPhone(ID){
	return variable_struct_get(global._phones, ID);
}