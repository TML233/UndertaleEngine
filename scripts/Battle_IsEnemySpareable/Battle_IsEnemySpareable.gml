///@arg enemy_slot
function Battle_IsEnemySpareable(ENEMY) {
	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_spareable[ENEMY];
	}else{
		return false;
	}


}
