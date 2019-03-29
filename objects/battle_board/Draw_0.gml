draw_sprite_ext(spr_pixel,0,_bg_x,_bg_y,_bg_width,_bg_height,_angle,color_bg,alpha_bg);

if(_angle%360==0){
	draw_surface_part_ext(_surface,_surface_x,_surface_y,_surface_width,_surface_height,_surface_x,_surface_y,1,1,color,alpha);
}else{
	draw_surface(_surface,0,0);
}

draw_sprite_ext(spr_pixel,0,_frame_up_x,_frame_up_y,_frame_up_width,_frame_up_height,_angle,color_frame,alpha_frame);
draw_sprite_ext(spr_pixel,0,_frame_left_x,_frame_left_y,_frame_left_width,_frame_left_height,_angle,color_frame,alpha_frame);
draw_sprite_ext(spr_pixel,0,_frame_down_x,_frame_down_y,_frame_down_width,_frame_down_height,_angle,color_frame,alpha_frame);
draw_sprite_ext(spr_pixel,0,_frame_right_x,_frame_right_y,_frame_right_width,_frame_right_height,_angle,color_frame,alpha_frame);