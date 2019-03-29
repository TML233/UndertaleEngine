///@arg bullet_obj/inst
var BULLET=argument[0];

if(!object_exists(BULLET)&&instance_exists(BULLET)){
	BULLET=BULLET.object_index;
}
if(object_exists(BULLET)){
	return (BULLET==battle_bullet || object_get_parent(BULLET)==battle_bullet);
}else{
	return false;
}