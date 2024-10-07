///@arg enemy_slot
///@arg action_number
function Battle_SetEnemyActionNumber() {

	var ENEMY=argument[0];
	var NUM=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && NUM>=0 && NUM<=6){
		battle._enemy_action_number[ENEMY]=NUM;
		return true;
	}else{
		return false;
	}


}
