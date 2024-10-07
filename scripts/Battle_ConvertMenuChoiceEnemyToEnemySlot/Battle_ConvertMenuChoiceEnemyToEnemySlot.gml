///@arg menu_choice_enemy
function Battle_ConvertMenuChoiceEnemyToEnemySlot() {
	var CHOICE_ENEMY=argument[0];

	if(CHOICE_ENEMY<Battle_GetEnemyNumber()){
		var proc=0;
		var proc2=0;
		var result=-1;
		repeat(3){
			if(instance_exists(Battle_GetEnemy(proc))){
				if(proc2==CHOICE_ENEMY){
					result=proc;
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
