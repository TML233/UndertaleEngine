///@desc Trigger
_triggered=true;
if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.GENOCIDE)==true) {
	Encounter_Start(9999, true, _exclamation);
}
else {
	Encounter_Start(_encounter_id, true, _exclamation);	
}