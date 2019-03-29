///@arg turn_obj/inst
var TURN=argument[0];

if(!object_exists(TURN)&&instance_exists(TURN)){
	TURN=TURN.object_index;
}
if(object_exists(TURN)){
	return (TURN==battle_turn || object_get_parent(TURN)==battle_turn);
}else{
	return false;
}