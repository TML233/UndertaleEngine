///@desc Init
event_inherited();
_compliment = 0;
_insult = 0;

Battle_SetEnemyName(_enemy_slot,"* EX Monster");

//ACTS
//ACT Number
Battle_SetEnemyActionNumber(_enemy_slot,1); //First Slot 1 - 2 - 3 - 4
Battle_SetEnemyActionNumber(_enemy_slot,2); //Second Slot
Battle_SetEnemyActionNumber(_enemy_slot,3); //Third Slot

//ACT Name
Battle_SetEnemyActionName(_enemy_slot,0,"* Check"); //Name of the Slot 0 - 1 - 2 - 3
Battle_SetEnemyActionName(_enemy_slot,1,"* You Stinky"); //Name of the Slot
Battle_SetEnemyActionName(_enemy_slot,2,"* You Smell Nice"); //Name of the Slot


Battle_SetEnemyDEF(_enemy_slot,-10);

_hp_max=130;
_hp=130;
