///@arg turn_obj/inst
function Battle_IsTurnValid() {
	var TURN=argument[0];

	if(!object_exists(TURN)&&instance_exists(TURN)){
		TURN=TURN.object_index;
	}
	
	return (GetObjectBase(TURN)==battle_turn);
}
