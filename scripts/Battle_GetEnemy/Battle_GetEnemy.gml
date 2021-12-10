///@arg enemy_slot
function Battle_GetEnemy() {
	var ENEMY=argument[0];

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
