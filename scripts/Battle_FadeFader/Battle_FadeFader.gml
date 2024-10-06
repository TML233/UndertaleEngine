///@arg alpha
///@arg time
function Battle_FadeFader(ALPHA,TIME) {
	Anim_Create(battle_fader,"alpha",0,0,battle_fader.alpha,ALPHA-battle_fader.alpha,TIME);
	return true;
}
