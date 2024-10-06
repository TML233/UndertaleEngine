///@arg encounter_id
function Encounter_IsExists(ENCOUNTER) {
	var map=global._encounter;

	return ds_map_exists(map,ENCOUNTER);
}
