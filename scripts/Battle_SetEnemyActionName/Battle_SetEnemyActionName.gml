///@arg enemy_slot
///@arg action_slot
///@arg text
function Battle_SetEnemyActionName(ENEMY,ACTION,TEXT) {
	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0 && ACTION<=6){
		battle._enemy_action_name[ENEMY,ACTION]=TEXT;
		return true;
	}else{
		return false;
	}


}
