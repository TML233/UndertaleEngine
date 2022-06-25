/// @description Debug Text

draw_set_font(font_crypt_of_tomorrow);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_ext_transformed(60,50,"Turn:"+string(_turn),9,-1,4,4,0);
draw_text_ext_transformed(60,80,"compliment: "+string(_compliment),9,-1,4,4,0);
draw_text_ext_transformed(60,110,"insult: "+string(_insult),9,-1,4,4,0);

