alarm[0]=1;

var warp_landmark=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK);
var warp_dir=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR);

if(warp_landmark!=-1&&instance_exists(hint_landmark)){
	var lx=x;
	var ly=y;
	with(hint_landmark){
		if(landmark_id==warp_landmark){
			lx=x;
			ly=y;
		}
	}
	x=lx;
	y=ly;
}
if(warp_dir!=-1){
	dir=warp_dir;
}

Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,-1);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,-1);