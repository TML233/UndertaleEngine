///@arg turn_obj
function Battle_IsTurnValid(TURN) {
	if(!object_exists(TURN)&&instance_exists(TURN)){
		TURN=TURN.object_index;
	}
	if(object_exists(TURN)){
		return (TURN==battle_turn || Object_GetBaseParent(TURN)==battle_turn);
	}else{
		return false;
	}
}
