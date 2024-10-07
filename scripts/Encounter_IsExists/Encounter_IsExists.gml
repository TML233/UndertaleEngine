///@arg encounter_id
function Encounter_IsExists() {
	var ENCOUNTER=argument[0];

	var map=global._encounter;

	return ds_map_exists(map,ENCOUNTER);


}
