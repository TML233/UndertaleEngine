///@arg enemy_slot
///@arg spareable
function Battle_SetEnemySpareable(ENEMY,SPAREABLE) {
	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_spareable[ENEMY]=SPAREABLE;
		return true;
	}else{
		return false;
	}
}
