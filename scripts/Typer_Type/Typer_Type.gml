/// @arg x
/// @arg y
/// @arg text
/// @arg prefix*
/// @arg auto_sleep*
function Typer_Type(){
	var X=argument[0];
	var Y=argument[1];
	var text=argument[2];
	var prefix="";
	var auto_sleep=false;
	var punctuations = ["!","?",".",",",":",";"];
	if (argument_count>3) prefix=argument[3];
	if (argument_count>4) auto_sleep=argument[4];
	
	var text_full = prefix + text;
	if(auto_sleep) for (var i = 0; i < array_length(punctuations); i++) text_full = string_replace_all(text_full, punctuations[i], punctuations[i] + "{sleep 20}");
	text_full = string_replace_all(text_full, "{end_ar}", "{pause}{clear}");
	text_full = string_replace_all(text_full, "{w}", "{sleep 20}");
	
	var inst=instance_create_depth(X,Y,DEPTH_UI.TEXT,text_typer);
	inst.text=text_full;
	return inst;
}