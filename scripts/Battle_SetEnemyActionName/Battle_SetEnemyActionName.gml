///@arg enemy_slot
///@arg action_slot
///@arg text
function Battle_SetEnemyActionName() {

	var ENEMY=argument[0];
	var ACTION=argument[1];
	var TEXT=argument[2];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0 && ACTION<=6){
		battle._enemy_action_name[ENEMY,ACTION]=TEXT;
		return true;
	}else{
		return false;
	}


}
