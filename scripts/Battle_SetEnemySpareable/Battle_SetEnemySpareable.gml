///@arg enemy_slot
///@arg spareable
function Battle_SetEnemySpareable() {
	var ENEMY=argument[0];
	var SPAREABLE=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_spareable[ENEMY]=SPAREABLE;
		return true;
	}else{
		return false;
	}


}
