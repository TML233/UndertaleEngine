///@arg enemy_slot
function Battle_GetEnemyCenterPosX(ENEMY) {
	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_center_pos_x[ENEMY];
	}else{
		return 0;
	}


}
