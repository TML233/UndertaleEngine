///@arg enemy_slot
///@arg name
function Battle_SetEnemyName(ENEMY,NAME) {
	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_name[ENEMY]=NAME;
		return true;
	}else{
		return false;
	}


}
