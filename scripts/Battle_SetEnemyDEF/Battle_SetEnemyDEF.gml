///@arg enemy_slot
///@arg def
function Battle_SetEnemyDEF(ENEMY,DEF) {
	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_def[ENEMY]=DEF;
		return true;
	}else{
		return false;
	}


}
