///@arg bullet_obj
function Battle_IsBulletValid(BULLET) {
	if(!object_exists(BULLET)&&instance_exists(BULLET)){
		BULLET=BULLET.object_index;
	}
	if(object_exists(BULLET)){
		return (BULLET==battle_bullet || Object_GetBaseParent(BULLET)==battle_bullet);
	}else{
		return false;
	}


}
