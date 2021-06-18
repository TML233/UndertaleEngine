///@desc Init
Battle_SetEnemyName(_enemy_slot,"* Test Monster");

Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check");
Battle_SetEnemyActionName(_enemy_slot,1,"* Cheat");
Battle_SetEnemyDEF(_enemy_slot,-15);

_hp_max=100;
_hp=100;

_sprite_normal=sprite_index;
_sprite_hurt=spr_testmonster_hurt;

image_speed=0.25;
_head=instance_create_depth(x,y-sprite_height,-500,battle_enemy_test_head);