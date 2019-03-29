draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,1);
if(_hint){
	draw_set_font(font_crypt_of_tomorrow);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	draw_text_ext_transformed(320,360,"[PRESS Z OR ENTER]",9,-1,2,2,0);
	draw_set_halign(fa_left);
}