_cutscene_summary = function () {
	C_MoveChar(0, char_player, 150, 170, false, 3);
	C_PlaySfx(0, snd_flee);
	C_Wait(0, 30);
	C_PlaySfx(1, snd_item_heal);
	C_Wait(1, 15);
	Cutscene_End(2);
}