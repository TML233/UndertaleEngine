alarm[0]=1;

var z=Storage_GetTempGeneral();
var warp_landmark=z.Get(FLAG_TEMP_TRIGGER_WARP_LANDMARK,-1);
var warp_dir=z.Get(FLAG_TEMP_TRIGGER_WARP_DIR,0);

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

z.Set(FLAG_TEMP_TRIGGER_WARP_LANDMARK,-1);
z.Set(FLAG_TEMP_TRIGGER_WARP_LANDMARK,0);