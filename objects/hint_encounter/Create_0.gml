_encounter_max=6;

for(var i=0; i<_encounter_max; i++;) {
	_encounter_id[i]=0;
}

_steps=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.PLAYER_STEPS);
randomize();
_max_steps=random_range(600, 900)+(Player_GetKills()*10);

//Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.KILLS)