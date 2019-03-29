var spike_spr=(wide_spike ? spr_battle_dialog_enemy_spike_wide : spr_battle_dialog_enemy_spike);
var corner_spr=spr_battle_dialog_enemy_corner;

//四角
//左上
draw_sprite_ext(corner_spr,0,x-left-sprite_get_width(corner_spr),y-up-sprite_get_height(corner_spr),1,1,0,c_white,1);
//左下
draw_sprite_ext(corner_spr,0,x-left-sprite_get_width(corner_spr),y+down+sprite_get_height(corner_spr),1,-1,0,c_white,1);
//右上
draw_sprite_ext(corner_spr,0,x+right+sprite_get_width(corner_spr),y-up-sprite_get_height(corner_spr),-1,1,0,c_white,1);
//右下
draw_sprite_ext(corner_spr,0,x+right+sprite_get_width(corner_spr),y+down+sprite_get_height(corner_spr),-1,-1,0,c_white,1);

//边框
//上
draw_sprite_ext(spr_pixel,0,x-left,y-up-sprite_get_height(corner_spr),left+right,1,0,c_black,1);
//左
draw_sprite_ext(spr_pixel,0,x-left-sprite_get_width(corner_spr),y-up,1,up+down,0,c_black,1);
//下
draw_sprite_ext(spr_pixel,0,x-left,y+down+sprite_get_height(corner_spr)-1,left+right,1,0,c_black,1);
//右
draw_sprite_ext(spr_pixel,0,x+right+sprite_get_width(corner_spr)-1,y-up,1,up+down,0,c_black,1);

//填充
//横向填充
draw_sprite_ext(spr_pixel,0,x-left-sprite_get_width(corner_spr)+1,y-up,sprite_get_width(corner_spr)-1+left+right+sprite_get_width(corner_spr)-1,up+down,0,c_white,1);
//纵向填充
draw_sprite_ext(spr_pixel,0,x-left,y-up-sprite_get_height(corner_spr)+1,left+right,sprite_get_height(corner_spr)-1+up+down+sprite_get_height(corner_spr)-1,0,c_white,1);

//尖刺
if(show_spike){
	//朝左
	if(dir==DIR.LEFT){
		draw_sprite_ext(spike_spr,0,x-left-sprite_get_width(corner_spr),y,1,1,0,c_white,1);
	}
	//朝右
	if(dir==DIR.RIGHT){
		draw_sprite_ext(spike_spr,0,x+right+sprite_get_width(corner_spr),y,-1,1,0,c_white,1);
	}
	//朝上
	if(dir==DIR.UP){
		draw_sprite_ext(spike_spr,0,x,y-up-sprite_get_height(corner_spr),-1,1,90,c_white,1);
	}
	//朝下
	if(dir==DIR.DOWN){
		draw_sprite_ext(spike_spr,0,x,y+down+sprite_get_height(corner_spr),1,1,90,c_white,1);
	}
}