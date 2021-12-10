///@desc Command
var cmd=_list_cmd;

switch(cmd[|0]){
	case "speed":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0){
				_speed=cmd[|1];
			}
		}
		break;
		
	case "color":
		if(is_string(cmd[|1])){
			var color=GetColorFromString(cmd[|1]);
			switch(color){
				case c_white:
					_color_text[0]=c_white;
					_color_text[1]=c_white;
					_color_text[2]=c_white;
					_color_text[3]=c_white;
					_color_shadow[0]=make_color_rgb(49,49,79);
					_color_shadow[1]=make_color_rgb(49,49,79);
					_color_shadow[2]=make_color_rgb(15,15,115);
					_color_shadow[3]=make_color_rgb(15,15,115);
					break;
					
				case c_yellow:
					_color_text[0]=make_color_rgb(255,255,195);
					_color_text[1]=make_color_rgb(255,255,195);
					_color_text[2]=make_color_rgb(255,255,60);
					_color_text[3]=make_color_rgb(255,255,60);
					_color_shadow[0]=make_color_rgb(76,76,0);
					_color_shadow[1]=make_color_rgb(76,76,0);
					_color_shadow[2]=make_color_rgb(76,76,0);
					_color_shadow[3]=make_color_rgb(76,76,0);
					break;
					
				case c_red:
					_color_text[0]=make_color_rgb(255,195,195);
					_color_text[1]=make_color_rgb(255,195,195);
					_color_text[2]=make_color_rgb(255,60,60);
					_color_text[3]=make_color_rgb(255,60,60);
					_color_shadow[0]=make_color_rgb(76,0,0);
					_color_shadow[1]=make_color_rgb(76,0,0);
					_color_shadow[2]=make_color_rgb(76,0,0);
					_color_shadow[3]=make_color_rgb(76,0,0);
					break;
			}
		}
		break;
		
	case "color_text":
		var ARGC=ds_list_size(cmd)-1;
		if(ARGC==1||ARGC==4){
			var proc=0;
			repeat(ARGC){
				var color=c_white;
				if(is_string(cmd[|proc+1])){
					color=GetColorFromString(cmd[|proc+1]);
				}else if(is_real(cmd[|proc+1])){
					color=cmd[|proc+1];
				}
				if(ARGC==1){
					_color_text[0]=color;
					_color_text[1]=color;
					_color_text[2]=color;
					_color_text[3]=color;
				}else{
					_color_text[proc]=color;
					proc+=1;
				}
			}
		}
		break;
		
	case "color_shadow":
		var ARGC=ds_list_size(cmd)-1;
		if(ARGC==1||ARGC==4){
			var proc=0;
			repeat(ARGC){
				var color=c_white;
				if(is_string(cmd[|proc+1])){
					color=GetColorFromString(cmd[|proc+1]);
				}else if(is_real(cmd[|proc+1])){
					color=cmd[|proc+1];
				}
				if(ARGC==1){
					_color_shadow[0]=color;
					_color_shadow[1]=color;
					_color_shadow[2]=color;
					_color_shadow[3]=color;
				}else{
					_color_shadow[proc]=color;
					proc+=1;
				}
			}
		}
		break;
		
	case "color_outline":
		var ARGC=ds_list_size(cmd)-1;
		if(ARGC==1||ARGC==4){
			var proc=0;
			repeat(ARGC){
				var color=c_white;
				if(is_string(cmd[|proc+1])){
					color=GetColorFromString(cmd[|proc+1]);
				}else if(is_real(cmd[|proc+1])){
					color=cmd[|proc+1];
				}
				if(ARGC==1){
					_color_outline[0]=color;
					_color_outline[1]=color;
					_color_outline[2]=color;
					_color_outline[3]=color;
				}else{
					_color_outline[proc]=color;
					proc+=1;
				}
			}
		}
		break;
		
	case "shadow":
		if(is_bool(cmd[|1])){
			_shadow=cmd[|1];
		}
		break;
		
	case "outline":
		if(is_bool(cmd[|1])){
			_outline=cmd[|1];
		}
		break;
		
	case "shadow_pos":
		if(is_real(cmd[|1])){
			_shadow_x=cmd[|1];
			_shadow_y=cmd[|1];
		}
		break;
		
	case "shadow_x":
		if(is_real(cmd[|1])){
			_shadow_x=cmd[|1];
		}
		break;
		
	case "shadow_y":
		if(is_real(cmd[|1])){
			_shadow_y=cmd[|1];
		}
		break;
		
	case "alpha":
		if(is_real(cmd[|1])){
			_alpha=cmd[|1];
		}
		break;
		
	case "alpha_text":
		if(is_real(cmd[|1])){
			_alpha_text=cmd[|1];
		}
		break;
		
	case "alpha_shadow":
		if(is_real(cmd[|1])){
			_alpha_shadow=cmd[|1];
		}
		break;
		
	case "alpha_outline":
		if(is_real(cmd[|1])){
			_alpha_outline=cmd[|1];
		}
		break;
		
	case "sleep":
		if(is_real(cmd[|1])&&!_skipping&&!_instant){
			if(cmd[|1]>=0){
				_sleep=cmd[|1];
			}
		}
		break;
	
	case "pause":
		_paused=true;
		_skipping=false;
		_sleep=0;
		_char_frame_remain=0;
		break;
		
	case "instant":
		if(is_bool(cmd[|1])){
			_instant=bool(cmd[|1]);
		}
		break;
		
	case "skippable":
		if(is_bool(cmd[|1])){
			_skippable=bool(cmd[|1]);
		}
		break;
		
	case "voice":
		if(is_real(cmd[|1])){
			if(cmd[|1]==-1 || (cmd[|1]>=0 && cmd[|1]<array_height_2d(_group_voice))){
				_voice=cmd[|1];
			}
		}
		break;
		
	case "voice_single":
		if(is_real(cmd[|1])){
			if(cmd[|1]==-1 || cmd[|1]>=0 && cmd[|1]<array_length_2d(_group_voice,_voice)){
				_voice_single=cmd[|1];
			}
		}
		break;
		
	case "font":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0&&cmd[|1]<array_height_2d(_group_font)){
				_font=cmd[|1];
			}
		}
		break;
		
	case "clear":
		event_user(3);
		break;
		
	case "end":
		instance_destroy();
		break;
	
	case "scale":
		if(is_real(cmd[|1])){
			_scale_x=cmd[|1];
			_scale_y=cmd[|1];
		}
		break;
	
	case "scale_x":
		if(is_real(cmd[|1])){
			_scale_x=cmd[|1];
		}
		break;
		
	case "scale_y":
		if(is_real(cmd[|1])){
			_scale_y=cmd[|1];
		}
		break;
		
	case "space_x":
		if(is_real(cmd[|1])){
			_space_x=cmd[|1];
		}
		break;
		
	case "space_y":
		if(is_real(cmd[|1])){
			_space_y=cmd[|1];
		}
		break;
	
	case "define":
		if(is_string(cmd[|1])&&(is_real(cmd[|2])||is_string(cmd[|2]))){
			ds_map_delete(_map_macro,cmd[|1]);
			ds_map_add(_map_macro,cmd[|1],cmd[|2]);
		}
		break;
		
	case "undefine":
		if(is_string(cmd[|1])){
			ds_map_delete(_map_macro,cmd[|1]);
		}
		break;
		
	case "insert":
		if(is_real(cmd[|1])||is_string(cmd[|1])){
			text=string_insert(string(cmd[|1]),text,_char_proc+1);
		}
		break;
		
	case "choice":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0&&cmd[|1]<=1){
				draw_set_font(_group_font[_font,0]);
				_choice_x[cmd[|1]]=_char_x-string_width(" ")*_group_font_scale_x[_font,0]*_scale_x;
				_choice_y[cmd[|1]]=_char_y+string_height(" ")/2*_group_font_scale_y[_font,0]*_scale_y;
			}
		}else if(is_string(cmd[|1])||is_undefined(cmd[|1])){
			_choice_macro=cmd[|1];
			_choice=0;
		}
		break;
	
	case "if":
		var target_0=cmd[|1];
		var operator=cmd[|2];
		var target_1=cmd[|3];
		var insert_0=cmd[|4];
		var else_indicator=cmd[|5];
		var insert_1=cmd[|6];
		var result=true;
		
		target_0=(is_bool(target_0) ? real(target_0) : target_0);
		target_1=(is_bool(target_1) ? real(target_1) : target_1);
		
		if(((is_string(target_0)&&is_string(target_1))||(is_real(target_0)&&is_real(target_1)))&&(is_string(insert_0)||is_real(insert_0))&&((is_string(else_indicator)&&(is_string(insert_1)||is_real(insert_1)))||is_undefined(else_indicator))){
			if(operator=="=="){
				result=(target_0==target_1);
			}else if(operator=="!="){
				result=(target_0!=target_1);
			}else if(operator==">"){
				result=(target_0>target_1);
			}else if(operator==">="){
				result=(target_0>=target_1);
			}else if(operator=="<"){
				result=(target_0<target_1);
			}else if(operator=="<="){
				result=(target_0<=target_1);
			}else{
				break;
			}
			
			if(result){
				text=string_insert(string(insert_0),text,_char_proc+1);
			}else if(is_string(else_indicator)){
				if(else_indicator=="else"){
					text=string_insert(string(insert_1),text,_char_proc+1);
				}
			}
		}
		break;
		
	case "face":
		if(is_real(cmd[|1])){
			var fface=cmd[|1];
			if(fface==-1){
				if(instance_exists(_face)){
					instance_destroy(_face);
					_face=noone;
					x-=58*_scale_x;
					event_user(4);
				}
			}else if(fface>=0 && fface<array_length_1d(_group_face)){
				if(instance_exists(_face)){
					instance_destroy(_face);
				}else{
					x+=58*_scale_x;
					event_user(4);
				}
				_face=instance_create_depth(x-35*_scale_x,y+25*_scale_y,depth,_group_face[fface]);
				_face.gui=_gui;
				_face.image_xscale=_scale_x;
				_face.image_yscale=_scale_y;
			}
		}
		break;
		
	case "face_emotion":
		if(is_real(cmd[|1])){
			var femotion=cmd[|1];
			
			if(instance_exists(_face)){
				_face.emotion=femotion;
			}
			
			if(_face_linked!=-1){
				if(instance_exists(face)){
					var fid=_face_linked;
					with(face){
						if(face_id==fid){
							emotion=femotion;
						}
					}
				}
			}
		}
		break;
		
	case "face_link":
		if(is_real(cmd[|1])){
			_face_linked=cmd[|1];
		}
		break;
		
	case "face_unlink":
		_face_linked=-1;
		break;
		
	case "effect":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=-1){
				_effect=cmd[|1];
			}
		}
		break;
		
	case "depth":
		if(is_real(cmd[|1])){
			depth=cmd[|1];
		}
		break;
		
	case "gui":
		if(is_bool(cmd[|1])){
			_gui=cmd[|1];
		}
		break;
		
	case "sound":
		var target=-1;
		if(is_real(cmd[|1])){
			target=cmd[|1];
		}else{
			target=asset_get_index(cmd[|1]);
		}
		if(audio_exists(target)){
			audio_play_sound(target,0,false);
		}
		break;
		
	case "script":
		var target=-1;
		if(is_real(cmd[|1])){
			target=cmd[|1];
		}else{
			target=asset_get_index(cmd[|1]);
		}
		if(script_exists(target)){
			switch(ds_list_size(cmd)-2){
				case 0:
					script_execute(target);
					break;
				case 1:
					script_execute(target,cmd[|2]);
					break;
				case 2:
					script_execute(target,cmd[|2],cmd[|3]);
					break;
				case 3:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4]);
					break;
				case 4:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5]);
					break;
				case 5:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6]);
					break;
				case 6:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7]);
					break;
				case 7:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8]);
					break;
				case 8:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9]);
					break;
				case 9:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10]);
					break;
				case 10:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11]);
					break;
				case 11:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12]);
					break;
				case 12:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13]);
					break;
				case 13:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14]);
					break;
				case 14:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14],cmd[|15]);
					break;
				case 15:
					script_execute(target,cmd[|2],cmd[|3],cmd[|4],cmd[|5],cmd[|6],cmd[|7],cmd[|8],cmd[|9],cmd[|10],cmd[|11],cmd[|12],cmd[|13],cmd[|14],cmd[|15],cmd[|16]);
					break;
			}
		}
		break;
		
	case "char_link":
		if(is_real(cmd[|1])){
			_char_linked=cmd[|1];
		}
		break;
	
	case "char_unlink":
		_char_linked=-1;
		break;
		
	case "char_dir":
		if(is_real(cmd[|1])&&is_real(cmd[|2])){
			if(instance_exists(char)){
				var cid=cmd[|1];
				var cdir=cmd[|2];
				with(char){
					if(char_id==cid){
						dir=cdir;
					}
				}
			}
		}
		break;
		
	case "char_move":
		if(is_real(cmd[|1])&&is_real(cmd[|2])&&is_real(cmd[|3])){
			if(instance_exists(char)){
				var cid=cmd[|1];
				var cdir=cmd[|2];
				var cmove=cmd[|3];
				with(char){
					if(char_id==cid){
						move[cdir]=cmove;
					}
				}
			}
		}
		break;
		
	case "char_player_moveable":
		if(is_real(cmd[|1])){
			if(instance_exists(char_player)){
				char_player.moveable=cmd[1];
			}
		}
		break;
		
	case "sprite":
		var spr=cmd[|1];
		if(is_string(spr)){
			spr=asset_get_index(spr);
		}
		if(is_real(spr)){
			if(sprite_exists(spr)){
				var img=0;
				if(is_real(cmd[|2])){
					img=cmd[|2];
				}
				_char_sprite=spr;
				_char_sprite_image=img;
				_char="";
				event_user(0);
				_char_sprite=-1;
				_char_sprite_image=0;
			}
		}
		break;
		
	case "skip_space":
		if(is_bool(cmd[|1])){
			_skip_space=cmd[|1];
		}
		break;
}