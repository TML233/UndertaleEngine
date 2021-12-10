///@arg heal
function Player_Heal() {
	var HEAL=argument[0];

	if(HEAL>=0){
		var HP=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP);
		var HP_MAX=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX);
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,(HP+HEAL<=HP_MAX ? HP+HEAL : HP_MAX));
		return true;
	}else{
		return Player_Hurt(-HEAL);
	}


}
