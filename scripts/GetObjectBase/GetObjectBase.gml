function GetObjectBase(obj) {
	if(!object_exists(obj)){
		return -1;
	}
	
	var last;
	do{
		last=obj;
		obj=object_get_parent(obj);
	}until(!object_exists(obj));
	
	return last;
}
