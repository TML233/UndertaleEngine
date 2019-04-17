depth=DEPTH_UI.PANEL;

_x=320;
_y=400;
_up=20;
_down=0;
_left=250;
_right=250;
_color=c_black;
_alpha=0;
_alpha_base=0.6;

_queue_text=ds_queue_create();
_queue_duration=ds_queue_create();
_list_inst=ds_list_create();
_list_time=ds_list_create();
_list_destroy_inst=ds_list_create();
_list_destroy_time=ds_list_create();

_showed=false;
_up_previous=_up;