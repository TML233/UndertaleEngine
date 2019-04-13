_voice_played=false;
depth=_depth;

event_user(4);

if(_paused&&Input_CheckPressed(INPUT.CONFIRM)){
	_paused=false;
}
if(_skippable&&!_paused&&Input_CheckPressed(INPUT.CANCEL)){
	_skipping=true;
	_sleep=0;
	_char_frame_remain=0;
}
if(_choice!=-1){
	if((_choice==0&&Input_CheckPressed(INPUT.RIGHT))||(_choice==1&&Input_CheckPressed(INPUT.LEFT))){
		_choice=!_choice;
		audio_play_sound(snd_menu_switch,0,false);
	}
	if(Input_CheckPressed(INPUT.CONFIRM)){
		ds_map_delete(_map_macro,_choice_macro);
		ds_map_add(_map_macro,_choice_macro,_choice);
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TEXT_TYPER_CHOICE,_choice);
		_choice=-1;
		audio_play_sound(snd_menu_confirm,0,false);
	}
}

if(_char_proc<string_length(text)+1){
	if(!_paused){
		if(_sleep>0){
			_sleep-=1;
		}else{
			if(_char_frame_remain>0){
				_char_frame_remain-=1;
			}else{
				do{
					repeat(_char_per_frame){
						while((string_char_at(text,_char_proc)=="{"||string_char_at(text,_char_proc)=="&"||string_char_at(text,_char_proc)==" ")&&((_sleep==0||_skipping||_instant)&&!_paused&&_char_proc<=string_length(text))){
							while(string_char_at(text,_char_proc)=="{"&&((_sleep==0||_skipping||_instant)&&!_paused&&_char_proc<=string_length(text))){
								_char_proc+=1;
								ds_list_clear(_list_cmd);
								var loop=true;
								var cmd="";
								var str_mode=false;
								var str_input=false;
								while(loop){
									var cmd_char=string_char_at(text,_char_proc);
									if((cmd_char==" "||cmd_char=="}")&&!str_input){
										if(!str_mode){
											if(!ds_list_empty(_list_cmd)){
												if(ds_map_exists(_map_macro,cmd)){
													cmd=ds_map_find_value(_map_macro,cmd);
												}else{
													cmd=real(cmd);
												}
											}
										}
										ds_list_add(_list_cmd,cmd);
										str_mode=false;
										str_input=false;
										cmd="";
									}else if(cmd_char=="`"){
										str_mode=true;
										str_input=!str_input;
									}else{
										if(!str_mode||(str_mode&&str_input)){
											if(cmd_char=="\\"){
												_char_proc+=1;
												cmd_char=string_char_at(text,_char_proc);
											}
											cmd+=cmd_char;
										}
									}
									if(cmd_char=="}"&&!str_input){
										event_user(2);
										loop=false;
									}
									_char_proc+=1;
								}
							}
							
							while(string_char_at(text,_char_proc)=="&"&&((_sleep==0||_skipping||_instant)&&!_paused&&_char_proc<=string_length(text))){
								event_user(1);
								_char_proc+=1;
							}
							
							while(string_char_at(text,_char_proc)==" "&&((_sleep==0||_skipping||_instant)&&!_paused&&_char_proc<=string_length(text))){
								_char=" ";
								event_user(0);
								_char_proc+=1;
							}
						}
						
						if((_sleep==0||_skipping||_instant)&&!_paused&&_char_proc<=string_length(text)){
							_char=string_char_at(text,_char_proc);
							if(_char=="\\"){
								_char_proc+=1;
								_char=string_char_at(text,_char_proc);
							}
							event_user(0);
							_char_frame_remain=_speed;
							_char_proc+=1;
						}
					}
				}until(_char_proc>string_length(text)||_paused||(!_skipping&&!_instant));
			}
		}
	}
}

if(instance_exists(_face)){
	_face.gui=_gui;
	_face.depth=_depth;
	_face.talking=(!_sleep&&!_paused&&_char_proc<=string_length(text));
}

if(_face_linked!=-1){
	if(instance_exists(face)){
		var fid=_face_linked;
		var ftalking=(!_sleep&&!_paused&&_char_proc<=string_length(text));
		with(face){
			if(face_id==fid){
				talking=ftalking;
			}
		}
	}
}

if(_char_linked!=-1){
	if(instance_exists(char)){
		var cid=_char_linked;
		var ctalking=(!_sleep&&!_paused&&_char_proc<=string_length(text));
		with(char){
			if(char_id==cid){
				talking=ctalking;
			}
		}
	}
}

if(is_real(alpha_override)){
	if(alpha_override!=_alpha_override_previous){
		_alpha_override_previous=alpha_override;
		
		var proc=0;
		repeat(ds_list_size(_list_inst)){
			var INST=ds_list_find_value(_list_inst,proc);
			if(instance_exists(INST)){
				INST.alpha=alpha_override;
			}
			proc+=1;
		}
	}
}