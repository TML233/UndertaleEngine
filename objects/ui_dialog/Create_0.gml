depth=DEPTH_UI.PANEL;
if(instance_exists(char_player)){
	_top=(char_player.y-camera.y>130+char_player.sprite_height);
	char_player._moveable_dialog=false;
}else{
	_top=false;
}
_inst=noone;