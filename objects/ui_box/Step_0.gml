if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice_item>0){
			_choice_item-=1;
		}
	}else if(Input_IsPressed(INPUT.DOWN)){
		if((_choice_mode==0 && _choice_item<7) || (_choice_mode==1 && _choice_item<9)){
			_choice_item+=1;
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		_choice_mode=1;
	}else if(Input_IsPressed(INPUT.LEFT)){
		_choice_mode=0;
		if(_choice_item>7){
			_choice_item=7;
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		var items=Item_GetInventoryItems();
		var box=Item_GetInventoryBoxes(box_slot);
		if(_choice_mode==0){	
			var target=items.GetOrEmpty(_choice_item);
			if(items.IsItemTypeValid(target) && box.GetCount()<box.GetCapacity()){
				items.Remove(_choice_item);
				box.Add(target);
				event_user(1);
			}
		}else{
			var target=box.GetOrEmpty(_choice_item);
			if(box.IsItemTypeValid(target) && items.GetCount()<items.GetCapacity()){
				box.Remove(_choice_item);
				items.Add(target);
				event_user(1);
			}
		}
	}else if(Input_IsPressed(INPUT.CANCEL)){
		instance_destroy();
	}
}