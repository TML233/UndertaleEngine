var map=global._gmu_input;
repeat(ds_map_size(map)){
	var key=ds_map_find_first(map);
	Input_Unbind(key);
}
ds_map_destroy(map);

return true;