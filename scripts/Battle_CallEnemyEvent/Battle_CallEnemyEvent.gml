///@arg event
///@arg enemy_slot*
function Battle_CallEnemyEvent() {
	var EVENT=argument[0];
	var ENEMY=-1;
	if(argument_count>=2){
		ENEMY=argument[1];
	}

	if(ENEMY==-1){
		//全局调用
		var proc=0;
		repeat(3){
			var INST=Battle_GetEnemy(proc);
			if(instance_exists(INST)){
				with(INST){
					event_user(EVENT);
				}
			}
			proc+=1;
		}
		return true;
	}else if(Battle_IsEnemySlotValid(ENEMY)){
		//单独调用
		var INST=Battle_GetEnemy(ENEMY);
		if(instance_exists(INST)){
			with(INST){
				event_user(EVENT);
			}
		}
		return true;
	}else{
		return false;
	}


}
