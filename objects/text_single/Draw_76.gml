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
		if (_effect_wavy){
			_siner++;
			_offset_x=cos(_siner/4)*2;
			_offset_y=sin(_siner/4)*2;
		}
		_effect_wavy=!_effect_wavy;
		break;
	case 2:
		if(_effect_partly_shook){
			randomize();
			var rndm=random_range(0,100);
			if (rndm>=99){
				_offset_x=random_range(-1,1);
				_offset_y=random_range(-1,1);
			}
			else{
				_offset_x=0;
				_offset_y=0;
			}
		}
		_effect_partly_shook=!_effect_partly_shook;
		break;
}