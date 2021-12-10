///@arg enemy_obj/inst
function Battle_IsEnemyValid() {
	var ENEMY=argument[0];

	if(!object_exists(ENEMY) && instance_exists(ENEMY)){
		ENEMY=ENEMY.object_index;
	}

	if(object_exists(ENEMY)){
		if(ENEMY==battle_enemy || Object_GetBaseParent(ENEMY)==battle_enemy){
			return true;
		}else{
			return false;
		}
	}


}
