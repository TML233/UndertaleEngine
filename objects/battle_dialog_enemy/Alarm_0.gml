visible=true;
_inst=instance_create_depth(x-left+text_offset_x,y-up+text_offset_y,0,text_typer);
_inst.text="{shadow false}{effect 1}{skip_space false}{color_text `black`}{speed 0}{font 2}{gui true}{depth "+string(DEPTH_BATTLE.UI_HIGH-10)+"}"+text+"{pause}{end}";

left=0;
top=20;