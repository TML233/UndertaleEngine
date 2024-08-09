function Phone_Custom(){
	// Check/Add variables template in Phone_Create
	Phone_Create
	(
		"phone",
		{
		}
	);
	Phone_Create
	(
		"phone_toriel",
		{
			_name : "Toriel's Phone",
			_call : function()
			{
				audio_play_sound(snd_phone_call,0,false);
				Dialog_Add("* Dialing...{pause}{clear}* ...{pause}{clear}* Nobody picked up.");
				Dialog_Start();
			}
		}
	);
}