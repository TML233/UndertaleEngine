///@arg file_name

var FILE_NAME=argument[0];

if(!file_exists(FILE_NAME)){
	return "";
}

var str="";
var FILE=file_text_open_read(FILE_NAME);
while(!file_text_eof(FILE)){
	var S=file_text_readln(FILE);
	if(string_copy(S,1,2)!="//"){
			str+=S;
	}
}

file_text_close(FILE);
return str;