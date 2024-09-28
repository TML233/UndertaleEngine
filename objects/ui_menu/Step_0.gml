if(instance_exists(ui_dialog)){
	if(_menu!=-1){
		_menu=-1;
		event_user(0);
	}
}

if(_menu==-1){
	if(!instance_exists(ui_dialog)){
		instance_destroy();
	}
}else if(_menu==0){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice>0){
			_choice-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.DOWN)){
		var phones=Item_GetInventoryPhones();
		if(_choice<(phones.GetCount()>0 ? 2 : 1)){
			_choice+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		switch(_choice){
			case 0:
				var items=Item_GetInventoryItems();
				if(items.GetCount()>0){
					_menu=1;
					event_user(0);
					audio_play_sound(snd_menu_confirm,0,false);
				}
				break;
			case 1:
				_menu=3;
				event_user(0);
				audio_play_sound(snd_menu_confirm,0,false);
				break;
			case 2:
				_menu=4;
				event_user(0);
				audio_play_sound(snd_menu_confirm,0,false);
				break;
		}
	}else if(Input_IsPressed(INPUT.MENU)||Input_IsPressed(INPUT.CANCEL)){
		instance_destroy();
	}
}else if(_menu==1){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice_item>0){
			_choice_item-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.DOWN)){
		var items=Item_GetInventoryItems();
		if(_choice_item<items.GetCount()-1){
			_choice_item+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		_menu=2;
		event_user(0);
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(Input_IsPressed(INPUT.CANCEL)){
		_menu=0;
		event_user(0);
	}
}else if(_menu==2){
	if(Input_IsPressed(INPUT.LEFT)){
		if(_choice_item_operate>0){
			_choice_item_operate-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		if(_choice_item_operate<2){
			_choice_item_operate+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		//TODO
		_menu=-1;
		event_user(0);
		var items=Item_GetInventoryItems();
		switch(_choice_item_operate){
			case 0:
				items.InvokeItemUse(_choice_item);
				break;
			case 1:
				items.InvokeItemInfo(_choice_item);
				break;
			case 2:
				items.InvokeItemDrop(_choice_item);
				break;
		}
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(Input_IsPressed(INPUT.CANCEL)){
		_menu=1;
		event_user(0);
	}
}else if(_menu==3){
	if(Input_IsPressed(INPUT.CANCEL)){
		_menu=0;
		event_user(0);
	}
}else if(_menu==4){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice_phone>0){
			_choice_phone-=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.DOWN)){
		var phones=Item_GetInventoryPhones();
		if(_choice_phone<phones.GetCount()-1){
			_choice_phone+=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		var phones=Item_GetInventoryPhones();
		phones.InvokeItemUse(_choice_phone);
		_menu=-1;
		event_user(0);
		audio_play_sound(snd_menu_confirm,0,false);
	}else if(Input_IsPressed(INPUT.CANCEL)){
		_menu=0;
		event_user(0);
	}
}