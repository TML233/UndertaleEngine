///@arg enemy_slot
function Battle_GetEnemyName(ENEMY) {

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_name[ENEMY];
	}else{
		return "";
	}


}
