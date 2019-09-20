if(_menu==0){
	if(_mode==0){
		if(Input_IsPressed(INPUT.DOWN)){
			if(_choice<1){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice>0){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu=1;
				event_user(0);
			}else{
				room_goto(room_settings);
			}
		}
	}else{
		if(Input_IsPressed(INPUT.LEFT)){
			if(_choice==1){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice==0){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			if(_choice!=2){
				_choice=2;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice==2){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				Player_Load(0);
				var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,-1);
				if(room_exists(target)){
					room_goto(target);
				}else{
					show_message("ERROR:\nAttempt to goto an unexisting room "+string(target));
				}
			}else if(_choice==1){
				_menu=2;
				_naming_name=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
				_confirm_title=Lang_GetString("menu.confirm.title.reset");
				event_user(0);
			}else if(_choice==2){
				room_goto(room_settings);
			}
		}
	}
}else if(_menu==1){
	if(_choice_naming==0){
		if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice_naming_letter<51){
				_choice_naming_letter+=1;
				event_user(3);
			}
		}else if(Input_IsPressed(INPUT.LEFT)){
			if(_choice_naming_letter>0){
				_choice_naming_letter-=1;
				event_user(3);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice_naming_letter>=0&&_choice_naming_letter<=1){
				_choice_naming=1;
				_choice_naming_command=0;
			}else if(_choice_naming_letter>=2&&_choice_naming_letter<=4){
				_choice_naming=1;
				_choice_naming_command=1;
			}else if(_choice_naming_letter>=5&&_choice_naming_letter<=6){
				_choice_naming=1;
				_choice_naming_command=2;
			}else if(_choice_naming_letter>=26&&_choice_naming_letter<=30){
				_choice_naming_letter-=5;
			}else if(_choice_naming_letter>=31&&_choice_naming_letter<=32){
				_choice_naming_letter-=12;
			}else{
				_choice_naming_letter-=7;
			}
			event_user(3);
		}else if(Input_IsPressed(INPUT.DOWN)){
			if(_choice_naming_letter>=21&&_choice_naming_letter<=25){
				_choice_naming_letter+=5;
			}else if(_choice_naming_letter>=19&&_choice_naming_letter<=20){
				_choice_naming_letter+=12;
			}else if(_choice_naming_letter>=45&&_choice_naming_letter<=46){
				_choice_naming=1;
				_choice_naming_command=2;
			}else if(_choice_naming_letter>=47&&_choice_naming_letter<=48){
				_choice_naming=1;
				_choice_naming_command=0;
			}else if(_choice_naming_letter>=49&&_choice_naming_letter<=51){
				_choice_naming=1;
				_choice_naming_command=1;
			}else{
				_choice_naming_letter+=7;
			}
			event_user(3);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(string_length(_naming_name)<6){
				var inst=_inst_naming_letters._list_inst[|_choice_naming_letter];
				_naming_name+=inst.text;
			}
		}else if(Input_IsPressed(INPUT.CANCEL)){
			if(string_length(_naming_name)>0){
				_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
			}
		}
	}else{
		if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice_naming_command<2){
				_choice_naming_command+=1;
				event_user(3);
			}
		}else if(Input_IsPressed(INPUT.LEFT)){
			if(_choice_naming_command>0){
				_choice_naming_command-=1;
				event_user(3);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice_naming_command==0){
				_choice_naming=0;
				_choice_naming_letter=47;
			}else if(_choice_naming_command==1){
				_choice_naming=0;
				_choice_naming_letter=49;
			}else if(_choice_naming_command==2){
				_choice_naming=0;
				_choice_naming_letter=45;
			}
			event_user(3);
		}else if(Input_IsPressed(INPUT.DOWN)){
			if(_choice_naming_command==0){
				_choice_naming=0;
				_choice_naming_letter=0;
			}else if(_choice_naming_command==1){
				_choice_naming=0;
				_choice_naming_letter=2;
			}else if(_choice_naming_command==2){
				_choice_naming=0;
				_choice_naming_letter=5;
			}
			event_user(3);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice_naming_command==0){
				_menu=0;
				event_user(0);
			}
			if(_choice_naming_command==1){
				if(string_length(_naming_name)>0){
					_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
				}
			}
			if(_choice_naming_command==2){
				if(_naming_name!=""){
					event_user(4);
					_menu=2;
					event_user(0);
				}
			}
		}else if(Input_IsPressed(INPUT.CANCEL)){
			if(string_length(_naming_name)>0){
				_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
			}
		}
	}
}else if(_menu==2){
	if(Input_IsPressed(INPUT.LEFT)){
		if(_choice_confirm>0){
			_choice_confirm=0;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		if(_choice_confirm<1&&_confirm_valid){
			_choice_confirm=1;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice_confirm==0){
			_menu=(_mode==0 ? 1 : 0);
			event_user(0);
		}else{
			_menu=3;
			event_user(0);
		}
	}
}

if(_menu==2||_menu==3){
	if(_confirm_name_update){
		_confirm_name_offset_x=random_range(-1,1);
		_confirm_name_offset_y=random_range(-1,1);
		_confirm_name_angle=random_range(-1,1);
	}
	_confirm_name_update=!_confirm_name_update;
}