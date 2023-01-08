///@desc Hurt
_inv=Player_GetInvTotal();
audio_play_sound(snd_hurt,0,false);
Camera_Shake(4,4,1,1,true,true);