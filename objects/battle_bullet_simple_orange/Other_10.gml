/// @desc Orange Attack

//orange attack
if(Input_IsHeld(INPUT.UP)){
		Player_Hurt(Player_CalculateDamage(4));
		//Let the soul show the hurt animation
		Battle_CallSoulEventHurt();
		instance_destroy();}
		
		else if(Input_IsHeld(INPUT.DOWN)){
		Player_Hurt(Player_CalculateDamage(4));//Let the soul show the hurt animation
		Battle_CallSoulEventHurt();
		instance_destroy();}
	
	if(Input_IsHeld(INPUT.LEFT)){
		Player_Hurt(Player_CalculateDamage(4));
		//Let the soul show the hurt animation
		Battle_CallSoulEventHurt();
		instance_destroy();}
		
		else if(Input_IsHeld(INPUT.RIGHT)){
		Player_Hurt(Player_CalculateDamage(4));
		//Let the soul show the hurt animation
		Battle_CallSoulEventHurt();
		instance_destroy();}

