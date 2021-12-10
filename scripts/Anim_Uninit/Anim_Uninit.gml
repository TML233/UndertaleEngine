function Anim_Uninit() {
	ds_list_destroy(global._gmu_anim_list);
	var key=ds_map_find_first(global._gmu_anim_data);
	while(!is_undefined(key)){
		ds_map_destroy(global._gmu_anim_data[?key]);
		ds_map_delete(global._gmu_anim_data,key);
		key=ds_map_find_first(global._gmu_anim_data);
	}
	ds_map_destroy(global._gmu_anim_data);
	return true;


}
