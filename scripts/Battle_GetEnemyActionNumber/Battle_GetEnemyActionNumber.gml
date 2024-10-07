///@arg enemy_slot
function Battle_GetEnemyActionNumber() {

	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_action_number[ENEMY];
	}else{
		return 0;
	}


}
