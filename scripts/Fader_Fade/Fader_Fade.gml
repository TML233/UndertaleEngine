///@arg start
///@arg target
///@arg time
///@arg delay*
function Fader_Fade() {
	var START=argument[0];
	var TARGET=argument[1];
	var TIME=argument[2];
	var DELAY=0;
	if(argument_count>=4){
		DELAY=argument[3];
	}
	if(START==-1){
		START=fader.alpha;
	}

	Anim_Destroy(fader,"alpha");
	Anim_Create(fader,"alpha",0,0,START,TARGET-START,TIME,DELAY);

	return true;


}
