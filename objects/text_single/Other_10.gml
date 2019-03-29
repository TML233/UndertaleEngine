///@desc Draw
if(font_exists(font)){
	draw_set_font(font);
	if(shadow){
		draw_text_transformed_color(x+_offset_x+shadow_x*scale_x,y+_offset_y+shadow_y*scale_y,text,scale_x,scale_y,angle,color_shadow[0],color_shadow[1],color_shadow[3],color_shadow[2],alpha_shadow*alpha);
	}
	if(outline){
		var proc=0;
		repeat(scale_x){
			proc+=1;
			draw_text_transformed_color(x+_offset_x+proc,y+_offset_y,text,scale_x,scale_y,angle,color_outline[0],color_outline[1],color_outline[3],color_outline[2],alpha_outline*alpha);
			draw_text_transformed_color(x+_offset_x-proc,y+_offset_y,text,scale_x,scale_y,angle,color_outline[0],color_outline[1],color_outline[3],color_outline[2],alpha_outline*alpha);
		}
		proc=0;
		repeat(scale_y){
			proc+=1;
			draw_text_transformed_color(x+_offset_x,y+_offset_y+proc,text,scale_x,scale_y,angle,color_outline[0],color_outline[1],color_outline[3],color_outline[2],alpha_outline*alpha);
			draw_text_transformed_color(x+_offset_x,y+_offset_y-proc,text,scale_x,scale_y,angle,color_outline[0],color_outline[1],color_outline[3],color_outline[2],alpha_outline*alpha);
		}
	}
	draw_text_transformed_color(x+_offset_x,y+_offset_y,text,scale_x,scale_y,angle,color_text[0],color_text[1],color_text[3],color_text[2],alpha_text*alpha);
}
if(sprite_exists(sprite)){
	draw_sprite_ext(sprite,sprite_image,x+_offset_x,y+_offset_y,scale_x,scale_y,angle,color_text[0],alpha_text*alpha);
}