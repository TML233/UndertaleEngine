///@arg enemy_slot
function Battle_GetEnemy(ENEMY) {
	if(Battle_IsEnemySlotValid(ENEMY)){
		var INST=battle._enemy[ENEMY];
		if(instance_exists(INST)){
			return INST;
		}else{
			return noone;
		}
	}else{
		return noone;
	}


}
