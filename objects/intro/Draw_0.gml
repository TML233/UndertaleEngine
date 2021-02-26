/// @description Draw stuff
draw_self();

if (_draw[0]) {
	draw_set_alpha(image_alpha);
	draw_sprite(spr_introlast, 0, x, y + (sprite_height / 2) + _draw_y[0]);
}

draw_set_alpha(1);
draw_set_color(c_black);

draw_rectangle(0, 0, room_width, 28, false);            // Horizontal (Top)
draw_rectangle(0, 138, room_width, room_height, false); // Horizontal (Bottom)

draw_rectangle(0, 0, 60, room_height, false);           // Vertical (Left)
draw_rectangle(260, 0, room_width, room_height, false); // Vertical (Right)