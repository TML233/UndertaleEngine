if (_steam>0){
	var inst = instance_create_depth(x,y,char_player.depth-10,fire_vent_steam2)
	if (dir==DIR.UP)
		inst.direction = 90;
	if (dir==DIR.LEFT)
		inst.direction = 135;
	if (dir==DIR.RIGHT)
		inst.direction = 45;
	if (dir==DIR.DOWN) {
        inst.direction = 200;
        inst.speed /= 3;
	}
    _steam-=1;
}
alarm[5] = 2;