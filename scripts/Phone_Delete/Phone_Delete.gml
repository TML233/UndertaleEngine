///@arg phone_id
function Phone_Delete(phone_id){
	variable_struct_remove(global._phones, phone_id);
}