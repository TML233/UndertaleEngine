///@desc Update Menu 1 Text Color
_change_inst=_inst_naming_letters;
_change_color=c_white;
event_user(1);
_change_inst=_inst_naming_quit;
_change_color=c_white;
event_user(1);
_change_inst=_inst_naming_backspace;
_change_color=c_white;
event_user(1);
_change_inst=_inst_naming_done;
_change_color=c_white;
event_user(1);
if(_choice_naming==0){
	_change_inst=_inst_naming_letters;
	_change_color=c_yellow;
	_change_id=_choice_naming_letter;
	event_user(1);
	_change_id=-1;
}else{
	switch(_choice_naming_command){
		case 0:
			_change_inst=_inst_naming_quit;
			break;
		case 1:
			_change_inst=_inst_naming_backspace;
			break;
		case 2:
			_change_inst=_inst_naming_done;
			break;
	}
	_change_color=c_yellow;
	event_user(1);
}