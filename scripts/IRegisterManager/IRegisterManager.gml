function IRegisterable(id) constructor{
	self.id=id;
}


function IRegisterManager(metaDesc="") constructor{
	// Used to explain what this RegisterManager is for.
	self.metaDesc=metaDesc;
	
	objs={};
	function IsExists(id){
		return variable_struct_exists(objs,id);
	}
	function Register(obj){
		if(IsExists(obj.id)){
			throw metaDesc+" ID ["+obj.id+"] is already registered!";	
			return false;
		}
		objs[obj.id]=obj;
		return true;
	}
	function Get(id){
		if(!IsExists(id)){
			throw "Cannot find "+metaDesc+" ID ["+id+"]";
			return undefined;
		}
		return objs[id];
	}
	function Remove(id){
		if(!IsExists(id)){
			return false;
		}
		variable_struct_remove(objs,id);
		return true;
	}
	
}