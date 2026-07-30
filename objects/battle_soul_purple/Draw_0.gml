var y_top = battle_board.y - battle_board.up + 20;
var y_mid = battle_board.y;
var y_bot = battle_board.y + battle_board.down - 20;

draw_set_color(make_color_rgb(150, 0, 150));
var lx1 = battle_board.x - battle_board.left;
var lx2 = battle_board.x + battle_board.right;
draw_line_width(lx1, y_top, lx2, y_top, 2);
draw_line_width(lx1, y_mid, lx2, y_mid, 2);
draw_line_width(lx1, y_bot, lx2, y_bot, 2);
draw_set_color(c_white);

draw_self();
