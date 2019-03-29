///@arg alpha
///@arg time
var ALPHA=argument[0];
var TIME=argument[1];

Anim_New(battle_fader,"alpha",0,0,battle_fader.alpha,ALPHA-battle_fader.alpha,TIME);

return true;