var color_shadow = make_color_rgb(19,19,111)
if slot < 4
{
	draw_set_font(Lang_GetFont(Lang_GetString("font.dialog.0")))
	draw_text_transformed_color(battle_board.x-battle_board.left-5+40+252+1,battle_board.y-battle_board.up-5+36+28*2+1,"    PAGE 1",2,2,0,color_shadow,color_shadow,color_shadow,color_shadow,1)
	draw_text_transformed_color(battle_board.x-battle_board.left-5+40+252,battle_board.y-battle_board.up-5+36+28*2,"    PAGE 1",2,2,0,c_white,c_white,c_white,c_white,1)
}
else if slot >= 4
{
	draw_set_font(Lang_GetFont(Lang_GetString("font.dialog.0")))
	draw_text_transformed_color(battle_board.x-battle_board.left-5+40+252+1,battle_board.y-battle_board.up-5+36+28*2+1,"    PAGE 2",2,2,0,color_shadow,color_shadow,color_shadow,color_shadow,1)
	draw_text_transformed_color(battle_board.x-battle_board.left-5+40+252,battle_board.y-battle_board.up-5+36+28*2,"    PAGE 2",2,2,0,c_white,c_white,c_white,c_white,1)
}
//draw_text(480,0,string(slot))