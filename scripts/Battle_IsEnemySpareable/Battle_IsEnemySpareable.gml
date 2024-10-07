///@arg enemy_slot
function Battle_IsEnemySpareable() {
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_spareable[ENEMY];
	}else{
		return false;
	}


}
