if(fast&&Input_IsPressed(INPUT.CONFIRM)){
    instance_destroy();
}else if(instance_exists(_inst)){
    _inst.x=x-left+text_offset_x;
    _inst.y=y-up+text_offset_y;
    down=(_inst._newline_amt*10)+10;
}else{
    instance_destroy();
}

if(is_array(char_amt_array)&&array_length(char_amt_array)>0) {
    array_sort(char_amt_array,false);
    right=char_amt_array[0]*8;
}