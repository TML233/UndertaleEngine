///@arg phone_id,struct
function Phone_Create(phone_id, struct_i){
	var struct =
	{
		_phone_slot : -1,
		_name : "Phone",
		_call : function(){}
	}
	for (var i = 0; i < variable_struct_names_count(struct_i); i += 1)
	{
		var name = variable_struct_get_names(struct_i)[i];
		variable_struct_set(struct,name,variable_struct_get(struct_i,name))
	}
	variable_struct_set(global._phones, phone_id, struct);
}