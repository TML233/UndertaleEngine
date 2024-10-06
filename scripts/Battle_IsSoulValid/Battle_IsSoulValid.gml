///@arg soul_obj
function Battle_IsSoulValid(SOUL) {

	if(!object_exists(SOUL)&&instance_exists(SOUL)){
		SOUL=SOUL.object_index;
	}
	if(object_exists(SOUL)){
		return (SOUL==battle_soul || Object_GetBaseParent(SOUL)==battle_soul);
	}else{
		return false;
	}

}
