///@arg enemy_slot
///@arg action_slot
function Battle_GetEnemyActionName(ENEMY,ACTION) {
	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0 && ACTION<=6){
		return battle._enemy_action_name[ENEMY,ACTION];
	}else{
		return "";
	}


}
