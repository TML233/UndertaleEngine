///@arg hp_max
function Player_SetHpMax() {
	var HP_MAX=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX,HP_MAX);

	return result;


}
