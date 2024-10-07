///@arg enemy_obj/inst
function Battle_IsEnemyValid() {
	var ENEMY=argument[0];

	if(!object_exists(ENEMY) && instance_exists(ENEMY)){
		ENEMY=ENEMY.object_index;
	}

	return (GetObjectBase(ENEMY)==battle_enemy);
}
