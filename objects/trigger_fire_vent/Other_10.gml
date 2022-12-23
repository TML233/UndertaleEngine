/// @description Trigger
event_inherited();

if(instance_exists(char_player)){
	if(char_player.moveable){
		Anim_Create(char_player,"x",0,0,char_player.x,x-char_player.x,10);
		Anim_Create(char_player,"y",0,0,char_player.y,y-char_player.y,10);
		char_player.moveable=false;
		_using=true;
		alarm[0]=1;
	}
	_triggered=false;
}