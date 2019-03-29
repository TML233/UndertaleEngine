if(_state==0||_state==1){
	draw_sprite_ext(spr_pixel,0,108,118,424,174,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,108+6,118+6,424-6*2,174-6*2,0,c_black,1);
}

if(_state==0){
	if(_choice==0){
		draw_sprite(spr_battle_soul_red,0,108+6+37,118+6+131);
	}else{
		draw_sprite(spr_battle_soul_red,0,108+6+217,118+6+131);
	}
}