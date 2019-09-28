image_alpha=1;
Anim_Create(id,"image_angle",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,angle_start,angle_target-angle_start,time_move);
Anim_Create(id,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,x,x_target-x,time_move);
Anim_Create(id,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,y,y_target-y,time_move);
audio_stop_sound(snd_gb_charge);
audio_play_sound(snd_gb_charge,0,0);
alarm[1]=time_move+time_release_delay+1;