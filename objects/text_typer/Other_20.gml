///@desc Predict Text
while (_amt_i<string_length(text)+1) {
    if(str_mode_amt_cmd=="pause") exit;
    else {
        if(!str_mode_amt){
            if(string_char_at(text,_amt_i)=="{"){
                str_mode_amt=true;
            }
            else{
                if(string_char_at(text,_amt_i)!="&") {
                    _char_amt++;
                } else {
                    _newline_amt++;
                    _char_amt=0;
                }
            }
            array_set(_char_amt_finish,_newline_amt,_char_amt);
        }
        else{
            if(string_char_at(text,_amt_i)=="}") {
                str_mode_amt=false;
                str_mode_amt_cmd="";
            }
            else str_mode_amt_cmd+=string_char_at(text,_amt_i);
        }
    }
    _amt_i++;
}