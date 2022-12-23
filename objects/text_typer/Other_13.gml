///@desc Clear
_char_x=0;
_char_y=0;

_char_amt=1;
_newline_amt=0;
str_mode_amt=false;
str_mode_amt_cmd="";
array_delete(_char_amt_finish,0,array_length(_char_amt_finish));

var proc=0;
repeat(ds_list_size(_list_inst)){
    var INST=ds_list_find_value(_list_inst,proc);
    if(instance_exists(INST)){
        instance_destroy(INST);
    }
    proc+=1;
}
ds_list_clear(_list_inst);

alarm[0]=1;