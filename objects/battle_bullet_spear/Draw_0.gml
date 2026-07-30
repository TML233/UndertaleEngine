surface_set_target(Battle_GetBoardSurface()); {
    draw_set_color(c_red);
    var length = 16;
    var back_x = x + lengthdir_x(length, dir);
    var back_y = y + lengthdir_y(length, dir);
    
    // Draw spear shaft/head
    draw_line_width(x, y, back_x, back_y, 3);
    var wing_x1 = back_x + lengthdir_x(8, dir - 45);
    var wing_y1 = back_y + lengthdir_y(8, dir - 45);
    var wing_x2 = back_x + lengthdir_x(8, dir + 45);
    var wing_y2 = back_y + lengthdir_y(8, dir + 45);
    draw_line_width(back_x, back_y, wing_x1, wing_y1, 2);
    draw_line_width(back_x, back_y, wing_x2, wing_y2, 2);
    draw_set_color(c_white);
} surface_reset_target();
