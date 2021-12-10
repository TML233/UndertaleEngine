///@arg input
function Input_GetState() {
	var INPUT=argument[0];

	var map=global._gmu_input;
	var override=global._gmu_input_state_override;
	if(ds_map_exists(override,INPUT)){
		return override[?INPUT];
	}
	if(ds_map_exists(map,INPUT)){
		var list=ds_map_find_value(map,INPUT);
		var result=INPUT_STATE.NULL;
		var proc=0;
		repeat(ds_list_size(list)){
			var map_bind=ds_list_find_value(list,proc);
			var type=ds_map_find_value(map_bind,"type");
			var device=ds_map_find_value(map_bind,"device");
			var button=ds_map_find_value(map_bind,"button");
			switch(type){
				case INPUT_TYPE.KEYBOARD:
					if(keyboard_check(button)){
						result=INPUT_STATE.HELD;
					}
					if(keyboard_check_pressed(button)){
						result=INPUT_STATE.PRESSED;
					}
					if(keyboard_check_released(button)){
						result=INPUT_STATE.RELEASED;
					}
					break;
				case INPUT_TYPE.GAMEPAD:
					if(gamepad_button_check(device,button)){
						result=INPUT_STATE.HELD;
					}
					if(gamepad_button_check_pressed(device,button)){
						result=INPUT_STATE.PRESSED;
					}
					if(gamepad_button_check_released(device,button)){
						result=INPUT_STATE.RELEASED;
					}
					break;
				case INPUT_TYPE.MOUSE:
					if(mouse_check_button(button)){
						result=INPUT_STATE.HELD;
					}
					if(mouse_check_button_pressed(button)){
						result=INPUT_STATE.PRESSED;
					}
					if(mouse_check_button_released(button)){
						result=INPUT_STATE.RELEASED;
					}
					break;
			}
			proc+=1;
		}
		return result;
	}else{
		return INPUT_STATE.NULL;
	}


}
