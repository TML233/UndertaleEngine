///@arg soul_obj/inst
function Battle_IsSoulValid() {
	var SOUL=argument[0];

	if(!object_exists(SOUL)&&instance_exists(SOUL)){
		SOUL=SOUL.object_index;
	}
	if(object_exists(SOUL)){
		return (SOUL==battle_soul || Object_GetBaseParent(SOUL)==battle_soul);
	}else{
		return false;
	}


}
