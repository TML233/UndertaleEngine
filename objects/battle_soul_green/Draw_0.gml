draw_self();

var dx = lengthdir_x(24, _dir);
var dy = lengthdir_y(24, _dir);

draw_set_color(c_lime);
var px = lengthdir_x(12, _dir + 90);
var py = lengthdir_y(12, _dir + 90);

draw_line_width(x + dx - px, y + dy - py, x + dx + px, y + dy + py, 4);
draw_set_color(c_white);
