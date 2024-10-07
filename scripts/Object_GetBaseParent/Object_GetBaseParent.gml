function Object_GetBaseParent() {
	//@arg object
	var OBJ=argument[0];

	if(object_exists(OBJ)){
		var parent=object_get_parent(OBJ);
		if(object_exists(parent)){
			var new_parent=-1;
			do{
				new_parent=object_get_parent(parent);
				if(object_exists(new_parent)){
					parent=new_parent;
				}
			}until(!object_exists(new_parent));
			return parent;
		}else{
			return -1;
		}
	}else{
		return -1;
	}


}
