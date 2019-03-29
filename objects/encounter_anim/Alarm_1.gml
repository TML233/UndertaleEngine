_draw_black=true;
_draw_player=true;
_draw_soul_x=(char_player.x-char_player.sprite_width/2+5-camera.x)*2+sprite_get_width(spr_battle_soul_red)/2;
_draw_soul_y=(char_player.y-char_player.sprite_height+17-camera.y)*2+sprite_get_height(spr_battle_soul_red)/2;
if(Encounter_IsPauseBGM(_encounter)){
	BGM_Pause(0);
}
alarm[2]=1;