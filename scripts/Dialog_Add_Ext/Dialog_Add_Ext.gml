///@arg text
///@arg prefix*
function Dialog_Add_Ext() {
	var punctuations = ["!", "?", ".", ",", ":", ";"];
	var text = argument[0];
	var prefix = "";
	
	if (argument_count > 1)
		prefix = argument[1];
	
	for (var i = 0; i < array_length(punctuations); i++) text = string_replace_all(text, punctuations[i], punctuations[i] + "{sleep 20}");
	text = string_replace_all(text, "{end_ar}", "{pause}{clear}");
	text = string_replace_all(text, "{w}", "{sleep 20}");
	Dialog_Add(text, prefix);
	
	return true;
}
