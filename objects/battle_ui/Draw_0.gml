draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),1);

draw_text(x+245+Player_GetHpMax()*1.25+14,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));