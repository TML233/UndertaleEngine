///@arg alpha
///@arg time
function Battle_FadeFader() {
	var ALPHA=argument[0];
	var TIME=argument[1];

	Anim_Create(battle_fader,"alpha",0,0,battle_fader.alpha,ALPHA-battle_fader.alpha,TIME);

	return true;


}
