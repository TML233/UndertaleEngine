///@arg bullet_obj/inst
function Battle_IsBulletValid() {
	var BULLET=argument[0];

	if(!object_exists(BULLET)&&instance_exists(BULLET)){
		BULLET=BULLET.object_index;
	}
	
	return (GetObjectBase(BULLET)==battle_bullet);
}
