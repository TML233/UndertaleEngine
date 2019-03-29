depth=DEPTH_BATTLE.UI_HIGH;
visible=false;

text="";
dir=DIR.LEFT;
show_spike=true;
wide_spike=true;
up=0;
down=0;
left=0;
right=0;
template=0;

text_offset_x=0;
text_offset_y=0;

fast=false;

_inst=instance_create_depth(x-left+text_offset_x,y-up+text_offset_y,0,text_typer);

alarm[0]=1;