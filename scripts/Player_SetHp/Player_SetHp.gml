///@arg hp
function Player_SetHp() {
	var HP=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,HP);

	return result;


}
