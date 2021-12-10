///@arg enemy_slot
///@arg name
function Battle_SetEnemyName() {
	var ENEMY=argument[0];
	var NAME=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_name[ENEMY]=NAME;
		return true;
	}else{
		return false;
	}


}
