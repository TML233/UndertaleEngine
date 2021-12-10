///@arg enemy_slot
///@arg action_slot
function Battle_GetEnemyActionName() {

	var ENEMY=argument[0];
	var ACTION=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0 && ACTION<=6){
		return battle._enemy_action_name[ENEMY,ACTION];
	}else{
		return "";
	}


}
