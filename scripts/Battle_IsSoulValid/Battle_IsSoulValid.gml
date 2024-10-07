///@arg soul_obj/inst
function Battle_IsSoulValid() {
	var SOUL=argument[0];

	if(!object_exists(SOUL)&&instance_exists(SOUL)){
		SOUL=SOUL.object_index;
	}
	
	return (GetObjectBase(SOUL)==battle_soul);
}
