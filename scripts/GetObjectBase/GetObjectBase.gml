function GetObjectBase(obj) {
	if(!object_exists(obj)){
		return -1;
	}
	
	var last;
	do{
		last=obj;
		obj=object_get_parent(obj);
	}until(obj==-100);
	
	return last;
}
