///@arg hp_max
function Player_SetHpMax(HP_MAX) {


	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX,HP_MAX);

	return result;


}
