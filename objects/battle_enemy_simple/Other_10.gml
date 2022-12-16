///@desc Init

Battle_SetEnemyName(_enemy_slot,"* Test Monster");

_turn = Battle_GetTurnNumber();

//ACTS
//ACT Number
Battle_SetEnemyActionNumber(_enemy_slot,1); //First Slot 1 - 2 - 3 - 4
//ACT Name
Battle_SetEnemyActionName(_enemy_slot,0,"* Check"); //Name of the Slot 0 - 1 - 2 - 3


Battle_SetEnemyDEF(_enemy_slot,-15);

_hp_max=100;
_hp=100;
