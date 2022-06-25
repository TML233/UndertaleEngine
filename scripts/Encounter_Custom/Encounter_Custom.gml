function Encounter_Custom() {
	
	enum ENEMY_ID{
		ENEMY,
		GB,
		SIMPLE,
		EX
	}
	
	//go to the room_battle_(gb,simple,ex)'s room creation code
	
	Encounter_Set(ENEMY_ID.ENEMY	,-1,battle_enemy,-1,"* You encountered nothing!",-1);
	Encounter_Set(ENEMY_ID.GB		,-1,battle_enemy_gb,-1,"* You encountered the Gaster Blaster!",-1);
	Encounter_Set(ENEMY_ID.SIMPLE	,-1,battle_enemy_simple,-1,"* You encountered the simple monster!",-1);
	Encounter_Set(ENEMY_ID.EX		,-1,battle_enemy_ex,-1,"* You encountered an example monster!",-1);
}
