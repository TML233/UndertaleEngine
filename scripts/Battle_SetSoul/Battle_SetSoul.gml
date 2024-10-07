///@arg soul_obj
function Battle_SetSoul() {
	var SOUL=argument[0];

	if(Battle_IsSoulValid(SOUL)&&object_exists(SOUL)){
		var X=0;
		var Y=0;
		if(instance_exists(battle_soul)){
			X=battle_soul.x;
			Y=battle_soul.y;
			instance_destroy(battle_soul);
		}
		instance_create_depth(X,Y,DEPTH_BATTLE.SOUL,SOUL);
		return true;
	}else{
		return false;
	}


}
