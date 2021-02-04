if(place_meeting(x,y,battle_soul)){
	var collision=true;
	if(_type!=0){
		collision=(floor(battle_soul.x)!=floor(battle_soul.xprevious)||floor(battle_soul.y)!=floor(battle_soul.yprevious));
		collision=(_type==1 ? collision : !collision);
	}
	if(collision){
		Battle_CallSoulEventBulletCollision();
	}
}