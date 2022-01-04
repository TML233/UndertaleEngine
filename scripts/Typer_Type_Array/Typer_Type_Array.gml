/// @arg x
/// @arg y
/// @arg text_arr
/// @arg prefix*
/// @arg auto_sleep*
function Typer_Type_Array(){
	var X=argument[0];
	var Y=argument[1];
	var text_arr=argument[2];
	var prefix="";
	var auto_sleep=false;
	var punctuations = ["!","?",".",",",":",";"];
	if (argument_count>3) prefix=argument[3];
	if (argument_count>4) auto_sleep=argument[4];
	
	var text_full=prefix;
	for (var i=0; i<array_length(text_arr); i++) text_full+=text_arr[i];
	if(auto_sleep) for (var i=0; i<array_length(punctuations); i++) text_full=string_replace_all(text_full,punctuations[i],punctuations[i]+"{sleep 20}");
	text_full=string_replace_all(text_full,"{end_ar}","{pause}{clear}");
	text_full=string_replace_all(text_full,"{w}","{sleep 20}");
	
	var inst=instance_create_depth(X,Y,DEPTH_UI.TEXT,text_typer);
	inst.text=text_full;
	return inst;
}