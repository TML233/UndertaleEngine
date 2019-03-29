///@desc Update Position
if(x!=xprevious||y!=yprevious){
	var CHANGE_X=x-xprevious;
	var CHANGE_Y=y-yprevious;
	var proc=0;
	repeat(ds_list_size(_list_inst)){
		var INST=ds_list_find_value(_list_inst,proc);
		if(instance_exists(INST)){
			with(INST){
				x+=CHANGE_X;
				y+=CHANGE_Y;
			}
		}
		proc+=1;
	}
	if(instance_exists(_face)&&!_face_linked){
		_face.x+=CHANGE_X;
		_face.y+=CHANGE_Y;
	}
	xprevious=x;
	yprevious=y;
}