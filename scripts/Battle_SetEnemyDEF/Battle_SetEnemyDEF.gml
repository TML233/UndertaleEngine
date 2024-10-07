///@arg enemy_slot
///@arg def
function Battle_SetEnemyDEF() {
	var ENEMY=argument[0];
	var DEF=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_def[ENEMY]=DEF;
		return true;
	}else{
		return false;
	}


}
