///@desc New Line
_char_x=0;

draw_set_font(_group_font[_font,0]);
_char_y+=(string_height(" ")+_group_font_space_y[_font]+_space_y)*_group_font_scale_y[_font,0]*_scale_y;

if(height<_char_y){
	height=_char_y;
}