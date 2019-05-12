if(_state==0){
	draw_sprite_ext(spr_pixel,0,16,16,610,450,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,16+6,16+6,610-6*2,450-6*2,0,c_black,1);
	
	draw_sprite_ext(spr_pixel,0,16+6+299,16+6+72,1,300,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,16+6+301,16+6+72,1,300,0,c_white,1);
	
	var proc=0;
	repeat(8){
		if(!Item_IsValid(Item_Get(proc))){
			draw_sprite_ext(spr_pixel,0,16+6+58,16+6+71+32*proc,180,1,0,c_red,1);
		}
		proc+=1;
	}
	proc=0;
	repeat(10){
		if(!Item_IsValid(Box_Get(box_slot,proc))){
			draw_sprite_ext(spr_pixel,0,16+6+58+302,16+6+71+32*proc,180,1,0,c_red,1);
		}
		proc+=1;
	}
	draw_sprite(spr_battle_soul_red,0,16+6+27+302*_choice_mode,16+6+69+32*_choice_item);
}