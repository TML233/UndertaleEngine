///@arg enemy_obj/inst
///@arg enemy_slot
function Battle_SetEnemy() {
	var ENEMY=argument[0];
	var SLOT=argument[1];

	if(Battle_IsEnemySlotValid(SLOT) && Battle_IsEnemyValid(ENEMY)){
		Battle_RemoveEnemy(SLOT);
		if(!object_exists(ENEMY)&&instance_exists(ENEMY)){
			if(ENEMY==self){
				ENEMY=id;
			}
			var proc=0;
			repeat(3){
				if(Battle_GetEnemy(proc)==ENEMY){
					Battle_RemoveEnemy(proc);
					break;
				}
				proc+=1;
			}
			battle._enemy[SLOT]=ENEMY;
		}
		if(object_exists(ENEMY)){
			battle._enemy[SLOT]=instance_create_depth(160*(SLOT+1),240,DEPTH_BATTLE.ENEMY,ENEMY);
			Battle_SetEnemyCenterPos(SLOT,160*(SLOT+1),160);
		}
		battle._enemy[SLOT]._enemy_slot=SLOT;
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.INIT,SLOT);
		return true;
	}else{
		return false;
	}


}
