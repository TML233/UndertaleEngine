var key=ds_map_find_first(global._gmu_anim);
while(!is_undefined(key)){
	ds_map_destroy(global._gmu_anim[?key]);
	ds_map_delete(global._gmu_anim,key);
	key=ds_map_find_first(global._gmu_anim);
}
ds_map_destroy(global._gmu_anim);
return true;