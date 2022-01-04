///@arg text_arr
///@arg prefix
///@arg ui
function Dialog_Add_Array() {
	var prefix = "";
	if (argument_count > 1) prefix = argument[1];
	var text_arr = argument[0];
	var text_full = prefix;
	
	for (var i = 0; i < array_length(text_arr); i++) text_full += text_arr[i];
	text_full = string_replace_all(text_full, "{end_ar}", "{pause}{clear}");
	text_full = string_replace_all(text_full, "{w}", "{sleep 20}");
	
	Dialog_Add(text_full);
	return true;


}
