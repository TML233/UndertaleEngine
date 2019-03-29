if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(Input_CheckPressed(INPUT.LEFT)){
		if(_choice==1){
			_choice=0;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_CheckPressed(INPUT.RIGHT)){
		if(_choice==0){
			_choice=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_CheckPressed(INPUT.CONFIRM)){
		if(_choice==0){
			_state=1;
			event_user(0);
		}else{
			instance_destroy();
		}
	}else if(Input_CheckPressed(INPUT.CANCEL)){
		instance_destroy();
	}
}else if(_state==1){
	if(Input_CheckPressed(INPUT.CONFIRM)||Input_CheckPressed(INPUT.CANCEL)){
		instance_destroy();
	}
}