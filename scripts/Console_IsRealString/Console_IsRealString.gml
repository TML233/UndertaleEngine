///@arg string
function Console_IsRealString() {
	var CHECK=argument[0];

	CHECK=string_replace_all(CHECK,"0","");
	CHECK=string_replace_all(CHECK,"1","");
	CHECK=string_replace_all(CHECK,"2","");
	CHECK=string_replace_all(CHECK,"3","");
	CHECK=string_replace_all(CHECK,"4","");
	CHECK=string_replace_all(CHECK,"5","");
	CHECK=string_replace_all(CHECK,"6","");
	CHECK=string_replace_all(CHECK,"7","");
	CHECK=string_replace_all(CHECK,"8","");
	CHECK=string_replace_all(CHECK,"9","");
	CHECK=string_replace_all(CHECK,".","");
	CHECK=string_replace_all(CHECK,"-","");

	return (CHECK=="");


}
