draw_self();
if (_last_frame) draw_sprite_ext(spr_intro_panel_last, 0, 0, _last_frame_y, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(spr_pixel, 0, 0, 0, 60, 240, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 320, 0, -60, 240, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 0, 0, 320, 28, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 0, 240, 320, -102, 0, c_black, 1);