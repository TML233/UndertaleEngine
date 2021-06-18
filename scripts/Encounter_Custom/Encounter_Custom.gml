Encounter_Set(0,-1,battle_enemy,-1,"* You encountered nothing!",-1);

//Simple Battle
Encounter_Set(1,battle_enemy_simple,battle_enemy_simple,battle_enemy_simple,"* You encountered the test&  monster!","battle");

//Gaster Blaster
Encounter_Set(2,-1,battle_enemy_gb,-1,"* Gaster Blaster example.",-1);

//Genocide
Encounter_Set(9999,-1,battle_enemy,-1,"{voice 0}{scale 1}"+Lang_GetString("battle.menu.genocide"),-1);