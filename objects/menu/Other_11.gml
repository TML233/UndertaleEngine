///@desc Change Text Color
if(instance_exists(_change_inst)){
	var list=_change_inst._list_inst;
	var proc=0;
	if(_change_id==-1){
		repeat(ds_list_size(list)){
			var inst_single=list[|proc];
			inst_single.color_text[0]=_change_color;
			inst_single.color_text[1]=_change_color;
			inst_single.color_text[2]=_change_color;
			inst_single.color_text[3]=_change_color;
			proc+=1;
		}
	}else{
		var inst_single=list[|_change_id];
		inst_single.color_text[0]=_change_color;
		inst_single.color_text[1]=_change_color;
		inst_single.color_text[2]=_change_color;
		inst_single.color_text[3]=_change_color;
	}
}