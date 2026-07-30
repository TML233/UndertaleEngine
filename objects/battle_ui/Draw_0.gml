draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

var safe_hp = Player_GetHp();
var kr_hp = 0;
if (global.kr_enabled && global.kr > 0) {
    kr_hp = min(Player_GetHp(), global.kr);
    safe_hp = max(0, Player_GetHp() - kr_hp);
}

// Background red bar
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
// Safe yellow bar
draw_sprite_ext(spr_pixel,0,x+245,y-1,safe_hp*1.25,21,0,make_color_rgb(255,255,0),1);
// Karma purple bar
if (kr_hp > 0) {
    draw_sprite_ext(spr_pixel,0,x+245+safe_hp*1.25,y-1,kr_hp*1.25,21,0,make_color_rgb(150,0,200),1);
}

// HP and KR text
var text_x = x+245+Player_GetHpMax()*1.25+14;
draw_text(text_x,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));

if (global.kr_enabled && global.kr > 0) {
    draw_set_color(make_color_rgb(150,0,200));
    draw_text(text_x + 90, y, "KR " + string(global.kr));
    draw_set_color(c_white);
}