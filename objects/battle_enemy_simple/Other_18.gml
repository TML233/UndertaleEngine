///@desc Turn Preparation Start

//Prepare the attack
instance_create_depth(0,0,0,battle_turn_simple);

//Say something
var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text="TEST DIALOG";
inst.template=0;