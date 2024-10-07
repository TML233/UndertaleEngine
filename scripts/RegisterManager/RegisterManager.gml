function RegisterManager() constructor{
	contents={};
	function Register(id, content){
		if(string_length(id)==0){
			show_error("id cannot be empty!",true);
			return false;
		}
		if(Contains(id)){
			show_error($"id \"{id}\" has already been registered!",true);
			return false;
		}
		struct_set(contents,id,content);
		return true;
	}
	function GetOrUndefined(id){
		if(!Contains(id)){
			return undefined;
		}
		return struct_get(contents,id);
	}
	function Get(id){
		if(!Contains(id)){
			show_error($"id \"{id}\" not found!",true);
			return undefined;
		}
		return struct_get(contents,id);
	}
	function Contains(id){
		return string_length(id)!=0 && struct_exists(contents,id);
	}
	function GetIds(){
		return struct_get_names(contents);
	}
}