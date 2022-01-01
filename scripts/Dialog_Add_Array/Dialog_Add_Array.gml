///@arg text_arr
///@arg prefix
function Dialog_Add_Array() {
	var prefix = ""
	if (argument_count > 1) prefix = argument[1];
	var text_arr = argument[0];
	var text_full = prefix;

	for (var i = 0; i < array_length_1d(text_arr); i++) text_full += text_arr[i];

	Dialog_Add(string_replace_all(text_full, "{end_ar}", "{pause}{clear}"));
	return true;


}
