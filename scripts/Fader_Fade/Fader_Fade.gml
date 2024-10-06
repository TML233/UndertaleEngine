///@arg start
///@arg target
///@arg time
///@arg delay*
function Fader_Fade(START,TARGET,TIME,DELAY=0) {
	if(START==-1){
		START=fader.alpha;
	}

	Anim_Destroy(fader,"alpha");
	Anim_Create(fader,"alpha",0,0,START,TARGET-START,TIME,DELAY);

	return true;
}
