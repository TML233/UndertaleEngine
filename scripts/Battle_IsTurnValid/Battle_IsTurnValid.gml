///@arg turn_obj/inst
var TURN=argument[0];

if(!object_exists(TURN)&&instance_exists(TURN)){
	TURN=TURN.object_index;
}
if(object_exists(TURN)){
	return (TURN==battle_turn || Object_GetBaseParent(TURN)==battle_turn);
}else{
	return false;
}