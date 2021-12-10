///@arg base_damage
///@arg damage_min*
///@arg damage_max*
function Player_CalculateDamage() {

	var DAMAGE=argument[0];
	var MIN=1;
	var MAX=undefined;

	var HP=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP);
	var DEF=Player_GetDefTotal();
	DAMAGE+=(HP>=20 ? ceil((HP-20)/10) : 0);
	DAMAGE-=DEF/5;
	DAMAGE=round(DAMAGE);

	if(is_real(MIN)){
		if(DAMAGE<MIN){
			DAMAGE=MIN;
		}
	}
	if(is_real(MAX)){
		if(DAMAGE>MAX){
			DAMAGE=MAX;
		}
	}

	return DAMAGE;


}
