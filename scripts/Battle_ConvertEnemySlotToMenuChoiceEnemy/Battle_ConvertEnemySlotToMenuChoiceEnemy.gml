///@arg enemy_slot
function Battle_ConvertEnemySlotToMenuChoiceEnemy() {
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		var proc=0;
		var proc2=0;
		var result=-1;
		repeat(3){
			if(instance_exists(Battle_GetEnemy(proc))){
				if(proc==ENEMY){
					result=proc2;
					break;
				}
				proc2+=1;
			}
			proc+=1;
		}
		return result;
	}else{
		return -1;
	}


}
