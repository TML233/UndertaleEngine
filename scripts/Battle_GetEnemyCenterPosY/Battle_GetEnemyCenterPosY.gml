///@arg enemy_slot
function Battle_GetEnemyCenterPosY() {
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_center_pos_y[ENEMY];
	}else{
		return 0;
	}


}
