///@desc Update Menu 2 Text Color
_change_inst=_inst_confirm_no;
_change_color=(_choice_confirm==0 ? c_yellow : c_white);
event_user(1);
_change_inst=_inst_confirm_yes;
_change_color=(_confirm_valid ? (_choice_confirm ? c_yellow : c_white) : c_dkgray);
event_user(1);