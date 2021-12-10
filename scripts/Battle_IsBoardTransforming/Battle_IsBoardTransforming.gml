function Battle_IsBoardTransforming() {
	return (Anim_IsExists(battle_board,"up") || Anim_IsExists(battle_board,"down") || Anim_IsExists(battle_board,"left") || Anim_IsExists(battle_board,"right") || Anim_IsExists(battle_board,"x") || Anim_IsExists(battle_board,"y"));


}
