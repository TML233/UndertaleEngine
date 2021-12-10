///@arg encounter_id
///@arg enemy_slot
function Encounter_GetEnemy() {
	var ID=argument[0];
	var ENEMY=argument[1];

	var map=global._encounter;
	if(ds_map_exists(map,ID) && Battle_IsEnemySlotValid(ENEMY)){
		var map_e=ds_map_find_value(map,ID);
		var result=ds_map_find_value(map_e,"enemy_"+string(ENEMY));
		return (is_real(result) ? result : -1);
	}else{
		return -1;
	}


}
