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
		if(string_copy(S,1,1)=="#"){
			if(string_copy(S,2,7)=="include"){
				if(string_count("\"",S)==2){
					var pos_0=string_pos("\"",S);
					S=string_replace(S,"\"","");
					var pos_1=string_pos("\"",S);
					var name=filename_path(FILE_NAME)+string_copy(S,pos_0,pos_1-pos_0);
					if(file_exists(name)){
						var file_include=file_text_open_read(name);
						var text_include="";
						while(!file_text_eof(file_include)){
							text_include+=file_text_readln(file_include);
						}
						file_text_close(file_include);
						text_include+="\n";
						str+=text_include;
					}
				}
			}
		}else{
			str+=S;
		}
	}
}

file_text_close(FILE);
return str;