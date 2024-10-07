///@arg id
///@arg enemy_0
///@arg enemy_1
///@arg enemy_2
///@arg menu_dialog
///@arg bgm*
///@arg menu_mercy_flee_enabled*
///@arg pause_bgm*
///@arg quick*
///@arg soul_x*
///@arg soul_y*
function Encounter_Set() {
	var ID=argument[0];
	var ENEMY_0=argument[1];
	var ENEMY_1=argument[2];
	var ENEMY_2=argument[3];
	var MENU_DIALOG=argument[4];
	var BGM=-1;
	var MENU_MERCY_FLEE_ENABLED=true;
	var PAUSE_BGM=true;
	var QUICK=false;
	var SOUL_X=48;
	var SOUL_Y=454;
	if(argument_count>=6){
		BGM=argument[5];
	}
	if(argument_count>=7){
		MENU_MERCY_FLEE_ENABLED=argument[6];
	}
	if(argument_count>=8){
		PAUSE_BGM=argument[7];
	}
	if(argument_count>=9){
		QUICK=argument[8];
	}
	if(argument_count>=10){
		SOUL_X=argument[9];
	}
	if(argument_count>=11){
		SOUL_Y=argument[10];
	}


	if(ID>=0){
		var map=global._encounter;
		var map_e=-1;
		if(ds_map_exists(map,ID)){
			map_e=ds_map_find_value(map,ID);
			ds_map_clear(map_e);
		}else{
			map_e=ds_map_create();
			ds_map_add(map,ID,map_e);
		}
		ds_map_add(map_e,"enemy_0",ENEMY_0);
		ds_map_add(map_e,"enemy_1",ENEMY_1);
		ds_map_add(map_e,"enemy_2",ENEMY_2);
		ds_map_add(map_e,"menu_dialog",MENU_DIALOG);
		ds_map_add(map_e,"bgm",BGM);
		ds_map_add(map_e,"pause_bgm",PAUSE_BGM);
		ds_map_add(map_e,"menu_mercy_flee_enabled",MENU_MERCY_FLEE_ENABLED);
		ds_map_add(map_e,"quick",QUICK);
		ds_map_add(map_e,"soul_x",SOUL_X);
		ds_map_add(map_e,"soul_y",SOUL_Y);
		return true;
	}else{
		return false;
	}


}
