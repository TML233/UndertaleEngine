///@desc Turn Preparation Start

//Prepare the attack
//---------------------
//random_turn = irandom_range(1,3)
//if random_turn = 1{instance_create_depth(0,0,0,battle_turn_simple);}
instance_create_depth(0,0,0,battle_turn_simple);


//Say something
//---------------------
switch(_turn){
	case 0:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Turn 0";
	inst.template=0;
	break;
	
	case 1:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Turn 1";
	inst.template=0;
	break;
	
	case 2:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Turn 2";
	inst.template=0;
	break;
	
	default:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Lost Count LOL";
	inst.template=0;
	break;
}
