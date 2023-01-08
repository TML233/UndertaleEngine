switch(effect){
	case -1:
		_offset_x=0;
		_offset_y=0;
		break;
		
	case 0:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		_effect_shook=!_effect_shook;
		break;
		
	case 1:
		randomize();
		if(_effect_partshook>99){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		else {
			_offset_x=0;
			_offset_y=0;	
		}
		_effect_partshook=random(100);
		break;
		
	case 2:
		_offset_x=dcos(siner*10); // increment 15 degrees every frame
		_offset_y=dsin(siner*10); // increment 15 degrees every frame
		siner++;
		break;
}